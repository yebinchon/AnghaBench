
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UPRINTF (char*,char*) ;
 int code ;
 int fprintf (int ,char*,char*) ;
 char* modename ;
 int ttyout ;

void
setftmode(int argc, char *argv[])
{

 if (argc != 2) {
  UPRINTF("usage: %s mode-name\n", argv[0]);
  code = -1;
  return;
 }
 fprintf(ttyout, "We only support %s mode, sorry.\n", modename);
 code = -1;
}
