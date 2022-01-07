
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char*,char*) ;

__attribute__((used)) static int
compare(const void *p, const void *q)
{
 return(strcmp(*(char **)p, *(char **)q));
}
