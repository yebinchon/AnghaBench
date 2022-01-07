
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
stpcpy(char * __restrict to, const char * __restrict from)
{

 for (; (*to = *from); ++from, ++to);
 return(to);
}
