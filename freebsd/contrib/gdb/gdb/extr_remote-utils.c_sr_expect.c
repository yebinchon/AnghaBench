
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int immediate_quit ;
 char sr_readchar () ;

void
sr_expect (char *string)
{
  char *p = string;

  immediate_quit++;
  while (1)
    {
      if (sr_readchar () == *p)
 {
   p++;
   if (*p == '\0')
     {
       immediate_quit--;
       return;
     }
 }
      else
 p = string;
    }
}
