
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMPLETE ;
 int ERROR ;
 int UPRINTF (char*,char*) ;
 int code ;
 int command (char*) ;
 int dirchange ;
 int fputs (char*,int ) ;
 int ttyout ;
 int updateremotecwd () ;
 scalar_t__ verbose ;

void
cdup(int argc, char *argv[])
{
 int r;

 if (argc == 0) {
  UPRINTF("usage: %s\n", argv[0]);
  code = -1;
  return;
 }
 r = command("CDUP");
 if (r == ERROR && code == 500) {
  if (verbose)
   fputs("CDUP command not recognized, trying XCUP.\n",
       ttyout);
  r = command("XCUP");
 }
 if (r == COMPLETE) {
  dirchange = 1;
  updateremotecwd();
 }
}
