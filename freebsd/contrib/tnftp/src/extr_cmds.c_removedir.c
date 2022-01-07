
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMPLETE ;
 int ERROR ;
 int UPRINTF (char*,char*) ;
 int another (int*,char***,char*) ;
 int code ;
 int command (char*,char*) ;
 int dirchange ;
 int fputs (char*,int ) ;
 int ttyout ;
 scalar_t__ verbose ;

void
removedir(int argc, char *argv[])
{
 int r;

 if (argc == 0 || argc > 2 ||
     (argc == 1 && !another(&argc, &argv, "directory-name"))) {
  UPRINTF("usage: %s directory-name\n", argv[0]);
  code = -1;
  return;
 }
 r = command("RMD %s", argv[1]);
 if (r == ERROR && code == 500) {
  if (verbose)
   fputs("RMD command not recognized, trying XRMD.\n",
       ttyout);
  r = command("XRMD %s", argv[1]);
 }
 if (r == COMPLETE)
  dirchange = 1;
}
