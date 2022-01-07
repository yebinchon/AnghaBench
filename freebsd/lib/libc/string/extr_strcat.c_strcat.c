
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
strcat(char * __restrict s, const char * __restrict append)
{
 char *save = s;

 for (; *s; ++s);
 while ((*s++ = *append++));
 return(save);
}
