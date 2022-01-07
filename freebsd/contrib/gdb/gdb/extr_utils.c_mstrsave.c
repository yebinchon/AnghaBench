
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* msavestring (void*,char const*,int ) ;
 int strlen (char const*) ;

char *
mstrsave (void *md, const char *ptr)
{
  return (msavestring (md, ptr, strlen (ptr)));
}
