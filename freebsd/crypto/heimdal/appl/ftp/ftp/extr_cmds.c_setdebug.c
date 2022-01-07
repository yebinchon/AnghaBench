
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SO_DEBUG ;
 int atoi (char*) ;
 int code ;
 int debug ;
 char* onoff (int) ;
 int options ;
 int printf (char*,char*,...) ;

void
setdebug(int argc, char **argv)
{
 int val;

 if (argc > 1) {
  val = atoi(argv[1]);
  if (val < 0) {
   printf("%s: bad debugging value.\n", argv[1]);
   code = -1;
   return;
  }
 } else
  val = !debug;
 debug = val;
 if (debug)
  options |= SO_DEBUG;
 else
  options &= ~SO_DEBUG;
 printf("Debugging %s (debug=%d).\n", onoff(debug), debug);
 code = debug > 0;
}
