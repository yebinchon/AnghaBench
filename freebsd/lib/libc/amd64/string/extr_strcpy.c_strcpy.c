
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __stpcpy (char*,char const*) ;

char *
strcpy(char * __restrict to, const char * __restrict from)
{
 __stpcpy(to, from);
 return(to);
}
