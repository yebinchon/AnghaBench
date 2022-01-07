
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int sb ;
typedef int nvlist_t ;


 int CACHE_SIZE ;
 int FA_LSTAT ;
 int FA_OPEN ;
 int NV_FLAG_NO_UNIQUE ;
 int NV_TYPE_NULL ;
 int O_CREAT ;
 int allcached ;
 int allowed_operations ;
 void* cacheposition ;
 int capflags ;
 char const* lastname ;
 scalar_t__ lstat (char const*,struct stat*) ;
 int nvlist_add_binary (int *,char*,struct stat*,int) ;
 int nvlist_add_nvlist (int *,char const*,int *) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;
 int nvlist_move_descriptor (int *,char*,int) ;
 char* nvlist_next (int const*,int*,void**) ;
 int open_file (char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static void
fileargs_add_cache(nvlist_t *nvlout, const nvlist_t *limits,
    const char *curent_name)
{
 int type, i, fd;
 void *cookie;
 nvlist_t *new;
 const char *fname;
 struct stat sb;

 if ((capflags & O_CREAT) != 0) {
  allcached = 1;
  return;
 }

 cookie = cacheposition;
 for (i = 0; i < CACHE_SIZE + 1; i++) {
  fname = nvlist_next(limits, &type, &cookie);
  if (fname == ((void*)0)) {
   cacheposition = ((void*)0);
   lastname = ((void*)0);
   allcached = 1;
   return;
  }

  if (i == CACHE_SIZE) {
   break;
  }

  if (type != NV_TYPE_NULL ||
      (curent_name != ((void*)0) && strcmp(fname, curent_name) == 0)) {
   curent_name = ((void*)0);
   i--;
   continue;
  }

  new = nvlist_create(NV_FLAG_NO_UNIQUE);
  if ((allowed_operations & FA_OPEN) != 0) {
   fd = open_file(fname);
   if (fd < 0) {
    i--;
    nvlist_destroy(new);
    continue;
   }
   nvlist_move_descriptor(new, "fd", fd);
  }
  if ((allowed_operations & FA_LSTAT) != 0) {
   if (lstat(fname, &sb) < 0) {
    i--;
    nvlist_destroy(new);
    continue;
   }
   nvlist_add_binary(new, "stat", &sb, sizeof(sb));
  }

  nvlist_add_nvlist(nvlout, fname, new);
 }
 cacheposition = cookie;
 lastname = fname;
}
