
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union key {int dummy; } key ;
struct group {int dummy; } ;


 int ERANGE ;
 int GRP_STORAGE_INITIAL ;
 int GRP_STORAGE_MAX ;
 int errno ;
 int free (char*) ;
 struct group grp ;
 char* grp_storage ;
 int grp_storage_size ;
 char* malloc (int) ;

__attribute__((used)) static struct group *
getgr(int (*fn)(union key, struct group *, char *, size_t, struct group **),
    union key key)
{
 int rv;
 struct group *res;

 if (grp_storage == ((void*)0)) {
  grp_storage = malloc(GRP_STORAGE_INITIAL);
  if (grp_storage == ((void*)0))
   return (((void*)0));
  grp_storage_size = GRP_STORAGE_INITIAL;
 }
 do {
  rv = fn(key, &grp, grp_storage, grp_storage_size, &res);
  if (res == ((void*)0) && rv == ERANGE) {
   free(grp_storage);
   if ((grp_storage_size << 1) > GRP_STORAGE_MAX) {
    grp_storage = ((void*)0);
    errno = ERANGE;
    return (((void*)0));
   }
   grp_storage_size <<= 1;
   grp_storage = malloc(grp_storage_size);
   if (grp_storage == ((void*)0))
    return (((void*)0));
  }
 } while (res == ((void*)0) && rv == ERANGE);
 if (rv != 0)
  errno = rv;
 return (res);
}
