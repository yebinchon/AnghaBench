
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct stat {int dummy; } ;
typedef int nvlist_t ;
struct TYPE_6__ {scalar_t__ fa_magic; int * fa_chann; } ;
typedef TYPE_1__ fileargs_t ;


 int EFAULT ;
 int EINVAL ;
 int ENOTCAPABLE ;
 scalar_t__ FILEARGS_MAGIC ;
 int assert (int) ;
 int errno ;
 int * fileargs_fetch (TYPE_1__*,char const*,char*) ;
 int fileargs_get_lstat_cache (TYPE_1__*,char const*,struct stat*) ;
 int fileargs_set_cache (TYPE_1__*,int *) ;
 int free (char*) ;
 int memcpy (struct stat*,void const*,size_t) ;
 int nvlist_destroy (int *) ;
 void* nvlist_get_binary (int *,char*,size_t*) ;
 char* nvlist_take_string (int *,char*) ;
 scalar_t__ strcmp (char*,char*) ;

int
fileargs_lstat(fileargs_t *fa, const char *name, struct stat *sb)
{
 nvlist_t *nvl;
 const void *buf;
 size_t size;
 char *cmd;

 assert(fa != ((void*)0));
 assert(fa->fa_magic == FILEARGS_MAGIC);

 if (name == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }

 if (sb == ((void*)0)) {
  errno = EFAULT;
  return (-1);
 }

 if (fa->fa_chann == ((void*)0)) {
  errno = ENOTCAPABLE;
  return (-1);
 }

 if (fileargs_get_lstat_cache(fa, name, sb) != -1)
  return (0);

 nvl = fileargs_fetch(fa, name, "lstat");
 if (nvl == ((void*)0))
  return (-1);

 buf = nvlist_get_binary(nvl, "stat", &size);
 assert(size == sizeof(*sb));
 memcpy(sb, buf, size);

 cmd = nvlist_take_string(nvl, "cmd");
 if (strcmp(cmd, "cache") == 0)
  fileargs_set_cache(fa, nvl);
 else
  nvlist_destroy(nvl);
 free(cmd);

 return (0);
}
