
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union key {int dummy; } key ;
struct passwd {int dummy; } ;


 int ERANGE ;
 int PWD_STORAGE_INITIAL ;
 int PWD_STORAGE_MAX ;
 int errno ;
 int free (char*) ;
 char* malloc (int) ;
 struct passwd pwd ;
 char* pwd_storage ;
 int pwd_storage_size ;

__attribute__((used)) static struct passwd *
getpw(int (*fn)(union key, struct passwd *, char *, size_t, struct passwd **),
    union key key)
{
 int rv;
 struct passwd *res;

 if (pwd_storage == ((void*)0)) {
  pwd_storage = malloc(PWD_STORAGE_INITIAL);
  if (pwd_storage == ((void*)0))
   return (((void*)0));
  pwd_storage_size = PWD_STORAGE_INITIAL;
 }
 do {
  rv = fn(key, &pwd, pwd_storage, pwd_storage_size, &res);
  if (res == ((void*)0) && rv == ERANGE) {
   free(pwd_storage);
   if ((pwd_storage_size << 1) > PWD_STORAGE_MAX) {
    pwd_storage = ((void*)0);
    errno = ERANGE;
    return (((void*)0));
   }
   pwd_storage_size <<= 1;
   pwd_storage = malloc(pwd_storage_size);
   if (pwd_storage == ((void*)0))
    return (((void*)0));
  }
 } while (res == ((void*)0) && rv == ERANGE);
 if (rv != 0)
  errno = rv;
 return (res);
}
