
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
strcpy(char * __restrict to, const char * __restrict from)
{
 char *save = to;

 for (; (*to = *from); ++from, ++to);
 return(save);
}
