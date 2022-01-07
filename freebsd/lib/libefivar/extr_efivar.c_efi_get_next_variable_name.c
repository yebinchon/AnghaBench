
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efi_var_ioc {size_t namesize; int vendor; scalar_t__* name; } ;
typedef int efi_guid_t ;
typedef scalar_t__ efi_char ;


 int EFIIOC_VAR_NEXT ;
 scalar_t__ ENOENT ;
 scalar_t__ ENOMEM ;
 int efi_fd ;
 int efi_open_dev () ;
 int efi_var_reset (struct efi_var_ioc*) ;
 scalar_t__ errno ;
 int free (char*) ;
 int ioctl (int ,int ,struct efi_var_ioc*) ;
 scalar_t__* malloc (size_t) ;
 void* realloc (scalar_t__*,int) ;
 int rv_to_linux_rv (int) ;
 int ucs2_to_utf8 (scalar_t__*,char**) ;
 int utf8_to_ucs2 (char*,scalar_t__**,size_t*) ;

int
efi_get_next_variable_name(efi_guid_t **guid, char **name)
{
 struct efi_var_ioc var;
 int rv;
 static efi_char *buf;
 static size_t buflen = 256 * sizeof(efi_char);
 static efi_guid_t retguid;
 size_t size;

 if (efi_open_dev() == -1)
  return -1;






 if (buf == ((void*)0))
  buf = malloc(buflen + sizeof(efi_char));

again:
 efi_var_reset(&var);
 var.name = buf;
 var.namesize = buflen;
 if (*name == ((void*)0)) {
  *buf = 0;

 } else {
  rv = utf8_to_ucs2(*name, &var.name, &size);
  if (rv != 0)
   goto errout;
  var.vendor = **guid;
 }
 rv = ioctl(efi_fd, EFIIOC_VAR_NEXT, &var);
 if (rv == 0 && var.name == ((void*)0)) {




  void *new = realloc(buf, var.namesize + sizeof(efi_char));
  if (new == ((void*)0)) {
   rv = -1;
   errno = ENOMEM;
   goto done;
  }
  buflen = var.namesize;
  buf = new;
  goto again;
 }

 if (rv == 0) {
  free(*name);
  *name = ((void*)0);
  var.name[var.namesize / sizeof(efi_char)] = 0;
  rv = ucs2_to_utf8(var.name, name);
  if (rv != 0)
   goto errout;
  retguid = var.vendor;
  *guid = &retguid;
 }
errout:



done:
 if (rv != 0 && errno == ENOENT) {
  errno = 0;
  free(*name);
  return 0;
 }

 return (rv_to_linux_rv(rv));
}
