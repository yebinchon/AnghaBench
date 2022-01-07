
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COMPLETE ;
 int another (int*,char***,char*) ;
 int code ;
 scalar_t__ command (char*,char*) ;
 scalar_t__ debug ;
 int printf (char*,char*,...) ;
 char* reply_string ;
 int sscanf (char*,char*,int*,int*,int*,int*,int*,int*) ;
 int verbose ;

void
modtime(int argc, char **argv)
{
 int overbose;

 if (argc < 2 && !another(&argc, &argv, "filename")) {
  printf("usage: %s filename\n", argv[0]);
  code = -1;
  return;
 }
 overbose = verbose;
 if (debug == 0)
  verbose = -1;
 if (command("MDTM %s", argv[1]) == COMPLETE) {
  int yy, mo, day, hour, min, sec;
  sscanf(reply_string, "%*s %04d%02d%02d%02d%02d%02d", &yy, &mo,
   &day, &hour, &min, &sec);

  printf("%s\t%02d/%02d/%04d %02d:%02d:%02d GMT\n", argv[1],
   mo, day, yy, hour, min, sec);
 } else
  printf("%s\n", reply_string);
 verbose = overbose;
}
