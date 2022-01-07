
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UPRINTF (char*,char*) ;
 int code ;
 int fprintf (int ,char*,...) ;
 char* remotecwd ;
 int ttyout ;
 int updateremotecwd () ;

void
pwd(int argc, char *argv[])
{

 code = -1;
 if (argc != 1) {
  UPRINTF("usage: %s\n", argv[0]);
  return;
 }
 if (! remotecwd[0])
  updateremotecwd();
 if (! remotecwd[0])
  fprintf(ttyout, "Unable to determine remote directory\n");
 else {
  fprintf(ttyout, "Remote directory: %s\n", remotecwd);
  code = 0;
 }
}
