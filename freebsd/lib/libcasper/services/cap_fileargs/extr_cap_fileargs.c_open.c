
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int nvlist_t ;
struct TYPE_6__ {scalar_t__ fa_magic; int * fa_chann; } ;
typedef TYPE_1__ fileargs_t ;


 int EINVAL ;
 int ENOTCAPABLE ;
 scalar_t__ FILEARGS_MAGIC ;
 int assert (int) ;
 int errno ;
 int * fileargs_fetch (TYPE_1__*,char const*,char*) ;
 int fileargs_get_fd_cache (TYPE_1__*,char const*) ;
 int fileargs_set_cache (TYPE_1__*,int *) ;
 int free (char*) ;
 int nvlist_destroy (int *) ;
 int nvlist_take_descriptor (int *,char*) ;
 char* nvlist_take_string (int *,char*) ;
 scalar_t__ strcmp (char*,char*) ;

int
fileargs_open(fileargs_t *fa, const char *name)
{
 int fd;
 nvlist_t *nvl;
 char *cmd;

 assert(fa != ((void*)0));
 assert(fa->fa_magic == FILEARGS_MAGIC);

 if (name == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }

 if (fa->fa_chann == ((void*)0)) {
  errno = ENOTCAPABLE;
  return (-1);
 }

 fd = fileargs_get_fd_cache(fa, name);
 if (fd != -1)
  return (fd);

 nvl = fileargs_fetch(fa, name, "open");
 if (nvl == ((void*)0))
  return (-1);

 fd = nvlist_take_descriptor(nvl, "fd");
 cmd = nvlist_take_string(nvl, "cmd");
 if (strcmp(cmd, "cache") == 0)
  fileargs_set_cache(fa, nvl);
 else
  nvlist_destroy(nvl);
 free(cmd);

 return (fd);
}
