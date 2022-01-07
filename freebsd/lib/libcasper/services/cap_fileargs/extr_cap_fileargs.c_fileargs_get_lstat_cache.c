
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int dummy; } ;
typedef int nvlist_t ;
struct TYPE_3__ {scalar_t__ fa_magic; int * fa_cache; } ;
typedef TYPE_1__ fileargs_t ;


 scalar_t__ FILEARGS_MAGIC ;
 int assert (int) ;
 int * dnvlist_get_nvlist (int *,char const*,int *) ;
 int memcpy (struct stat*,void const*,size_t) ;
 int nvlist_exists_binary (int const*,char*) ;
 void* nvlist_get_binary (int const*,char*,size_t*) ;

__attribute__((used)) static int
fileargs_get_lstat_cache(fileargs_t *fa, const char *name, struct stat *sb)
{
 const nvlist_t *nvl;
 size_t size;
 const void *buf;

 assert(fa != ((void*)0));
 assert(fa->fa_magic == FILEARGS_MAGIC);
 assert(name != ((void*)0));

 if (fa->fa_cache == ((void*)0))
  return (-1);

 nvl = dnvlist_get_nvlist(fa->fa_cache, name, ((void*)0));
 if (nvl == ((void*)0))
  return (-1);

 if (!nvlist_exists_binary(nvl, "stat")) {
  return (-1);
 }

 buf = nvlist_get_binary(nvl, "stat", &size);
 assert(size == sizeof(*sb));
 memcpy(sb, buf, size);

 return (0);
}
