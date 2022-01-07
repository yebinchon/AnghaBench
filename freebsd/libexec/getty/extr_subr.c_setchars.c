
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char _POSIX_VDISABLE ;
 char*** charnames ;
 char** charvars ;

void
setchars(void)
{
 int i;
 const char *p;

 for (i = 0; charnames[i]; i++) {
  p = *charnames[i];
  if (p && *p)
   *charvars[i] = *p;
  else
   *charvars[i] = _POSIX_VDISABLE;
 }
}
