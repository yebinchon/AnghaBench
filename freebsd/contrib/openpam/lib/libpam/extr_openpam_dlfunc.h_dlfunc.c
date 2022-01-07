
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dlfunc_t ;


 scalar_t__ dlsym (void*,char const*) ;

__attribute__((used)) static inline dlfunc_t
dlfunc(void *handle, const char *symbol)
{

 return ((dlfunc_t)dlsym(handle, symbol));
}
