
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ code ;
 scalar_t__ ntflag ;
 char* ntin ;
 char* ntout ;
 int printf (char*) ;
 int strlcpy (char*,char*,int) ;

void
setntrans(int argc, char **argv)
{
 if (argc == 1) {
  ntflag = 0;
  printf("Ntrans off.\n");
  code = ntflag;
  return;
 }
 ntflag++;
 code = ntflag;
 strlcpy (ntin, argv[1], 17);
 if (argc == 2) {
  ntout[0] = '\0';
  return;
 }
 strlcpy (ntout, argv[2], 17);
}
