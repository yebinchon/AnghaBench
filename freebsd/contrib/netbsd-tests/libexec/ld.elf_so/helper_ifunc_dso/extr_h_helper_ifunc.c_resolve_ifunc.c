
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 int ifunc1 () ;
 int ifunc2 () ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static __attribute__((used))
int (*resolve_ifunc(void))(void)
{
 const char *e = getenv("USE_IFUNC2");
 return e && strcmp(e, "1") == 0 ? ifunc2 : ifunc1;
}
