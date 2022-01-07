
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UPRINTF (char*,char*) ;
 int code ;
 int fprintf (int ,char*,...) ;
 char* localcwd ;
 int ttyout ;
 int updatelocalcwd () ;

void
lpwd(int argc, char *argv[])
{

 code = -1;
 if (argc != 1) {
  UPRINTF("usage: %s\n", argv[0]);
  return;
 }
 if (! localcwd[0])
  updatelocalcwd();
 if (! localcwd[0])
  fprintf(ttyout, "Unable to determine local directory\n");
 else {
  fprintf(ttyout, "Local directory: %s\n", localcwd);
  code = 0;
 }
}
