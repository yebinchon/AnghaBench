
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UPRINTF (char*,char*) ;
 int activefallback ;
 int code ;
 int fprintf (int ,char*,char*,char*) ;
 char* onoff (int) ;
 int passivemode ;
 scalar_t__ strcasecmp (char*,char*) ;
 int ttyout ;

void
setpassive(int argc, char *argv[])
{

 if (argc == 1) {
  passivemode = !passivemode;
  activefallback = passivemode;
 } else if (argc != 2) {
 passiveusage:
  UPRINTF("usage: %s [ on | off | auto ]\n", argv[0]);
  code = -1;
  return;
 } else if (strcasecmp(argv[1], "on") == 0) {
  passivemode = 1;
  activefallback = 0;
 } else if (strcasecmp(argv[1], "off") == 0) {
  passivemode = 0;
  activefallback = 0;
 } else if (strcasecmp(argv[1], "auto") == 0) {
  passivemode = 1;
  activefallback = 1;
 } else
  goto passiveusage;
 fprintf(ttyout, "Passive mode: %s; fallback to active mode: %s.\n",
     onoff(passivemode), onoff(activefallback));
 code = passivemode;
}
