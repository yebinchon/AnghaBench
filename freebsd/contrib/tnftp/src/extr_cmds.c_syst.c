
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UPRINTF (char*,char*) ;
 int code ;
 int command (char*) ;
 int verbose ;

void
syst(int argc, char *argv[])
{
 int oldverbose = verbose;

 if (argc == 0) {
  UPRINTF("usage: %s\n", argv[0]);
  code = -1;
  return;
 }
 verbose = 1;
 (void)command("SYST");
 verbose = oldverbose;
}
