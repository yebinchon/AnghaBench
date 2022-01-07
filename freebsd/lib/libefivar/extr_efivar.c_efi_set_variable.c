
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct efi_var_ioc {size_t datasize; int name; int attrib; int * data; int vendor; int namesize; } ;
typedef int efi_guid_t ;


 int EFIIOC_VAR_SET ;
 int efi_fd ;
 int efi_open_dev () ;
 int efi_var_reset (struct efi_var_ioc*) ;
 int free (int ) ;
 int ioctl (int ,int ,struct efi_var_ioc*) ;
 int utf8_to_ucs2 (char const*,int *,int *) ;

int
efi_set_variable(efi_guid_t guid, const char *name,
    uint8_t *data, size_t data_size, uint32_t attributes)
{
 struct efi_var_ioc var;
 int rv;

 if (efi_open_dev() == -1)
  return -1;

 efi_var_reset(&var);
 rv = utf8_to_ucs2(name, &var.name, &var.namesize);
 if (rv != 0)
  goto errout;
 var.vendor = guid;
 var.data = data;
 var.datasize = data_size;
 var.attrib = attributes;
 rv = ioctl(efi_fd, EFIIOC_VAR_SET, &var);
errout:
 free(var.name);

 return rv;
}
