
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;
typedef scalar_t__ _citrus_module_t ;


 int EINVAL ;
 int ENOMEM ;
 int I18NMODULE_MAJOR ;
 int PATH_MAX ;
 int RTLD_LAZY ;
 int * _PATH_I18NMODULE ;
 char* _findshlib (char*,int*,int*) ;
 int * _pathI18nModule ;
 char* dlerror () ;
 char* getenv (char*) ;
 int issetugid () ;
 void* libc_dlopen (char const*,int ) ;
 int printf (char*,char*) ;
 int snprintf (char*,int,char*,char const*) ;
 int * strdup (char const*) ;

int
_citrus_load_module(_citrus_module_t *rhandle, const char *encname)
{
 const char *p;
 char path[PATH_MAX];
 void *handle;
 int maj, min;

 if (_pathI18nModule == ((void*)0)) {
  p = getenv("PATH_I18NMODULE");
  if (p != ((void*)0) && !issetugid()) {
   _pathI18nModule = strdup(p);
   if (_pathI18nModule == ((void*)0))
    return (ENOMEM);
  } else
   _pathI18nModule = _PATH_I18NMODULE;
 }

 (void)snprintf(path, sizeof(path), "lib%s", encname);
 maj = I18NMODULE_MAJOR;
 min = -1;
 p = _findshlib(path, &maj, &min);
 if (!p)
  return (EINVAL);
 handle = libc_dlopen(p, RTLD_LAZY);
 if (!handle) {
  printf("%s", dlerror());
  return (EINVAL);
 }

 *rhandle = (_citrus_module_t)handle;

 return (0);
}
