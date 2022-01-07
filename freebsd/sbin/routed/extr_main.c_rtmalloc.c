
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int logbad (int,char*,int ,char const*) ;
 void* malloc (size_t) ;

void *
rtmalloc(size_t size,
  const char *msg)
{
 void *p = malloc(size);
 if (p == ((void*)0))
  logbad(1,"malloc(%lu) failed in %s", (u_long)size, msg);
 return p;
}
