
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;
typedef scalar_t__ _citrus_module_t ;


 int PATH_MAX ;
 void* dlsym (void*,char*) ;
 int snprintf (char*,int,char*,char const*,char const*) ;

void *
_citrus_find_getops(_citrus_module_t handle, const char *modname,
    const char *ifname)
{
 char name[PATH_MAX];
 void *p;

 snprintf(name, sizeof(name), "_citrus_%s_%s_getops",
     modname, ifname);
 p = dlsym((void *)handle, name);
 return (p);
}
