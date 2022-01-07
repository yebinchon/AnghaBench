
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
rmslashes(char *rrpin, char *rrpout)
{
 char *rrpoutstart;

 *rrpout = *rrpin;
 for (rrpoutstart = rrpout; *rrpin != '\0'; *rrpout++ = *rrpin++) {


  while (*rrpin == '/' && *(rrpin + 1) == '/')
    rrpin++;
 }


 if (rrpout - rrpoutstart > 1 && *(rrpout - 1) == '/')
  *(rrpout - 1) = '\0';
 else
  *rrpout = '\0';
}
