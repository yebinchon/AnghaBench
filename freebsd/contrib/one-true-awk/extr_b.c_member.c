
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uschar ;



int member(int c, const char *sarg)
{
 uschar *s = (uschar *) sarg;

 while (*s)
  if (c == *s++)
   return(1);
 return(0);
}
