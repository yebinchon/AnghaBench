
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nvlist_t ;
struct TYPE_3__ {scalar_t__ fa_magic; int fa_fdflags; int * fa_cache; } ;
typedef TYPE_1__ fileargs_t ;


 scalar_t__ FILEARGS_MAGIC ;
 int F_SETFD ;
 int O_CLOEXEC ;
 int O_CREAT ;
 int assert (int) ;
 int close (int) ;
 int * dnvlist_get_nvlist (int *,char const*,int *) ;
 int fcntl (int,int ,int) ;
 int nvlist_destroy (int *) ;
 int nvlist_exists_descriptor (int *,char*) ;
 int nvlist_take_descriptor (int *,char*) ;
 int * nvlist_take_nvlist (int *,char const*) ;

__attribute__((used)) static int
fileargs_get_fd_cache(fileargs_t *fa, const char *name)
{
 int fd;
 const nvlist_t *nvl;
 nvlist_t *tnvl;

 assert(fa != ((void*)0));
 assert(fa->fa_magic == FILEARGS_MAGIC);
 assert(name != ((void*)0));

 if (fa->fa_cache == ((void*)0))
  return (-1);

 if ((fa->fa_fdflags & O_CREAT) != 0)
  return (-1);

 nvl = dnvlist_get_nvlist(fa->fa_cache, name, ((void*)0));
 if (nvl == ((void*)0))
  return (-1);

 tnvl = nvlist_take_nvlist(fa->fa_cache, name);

 if (!nvlist_exists_descriptor(tnvl, "fd")) {
  nvlist_destroy(tnvl);
  return (-1);
 }

 fd = nvlist_take_descriptor(tnvl, "fd");
 nvlist_destroy(tnvl);

 if ((fa->fa_fdflags & O_CLOEXEC) != O_CLOEXEC) {
  if (fcntl(fd, F_SETFD, fa->fa_fdflags) == -1) {
   close(fd);
   return (-1);
  }
 }

 return (fd);
}
