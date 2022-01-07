
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int another (int*,char***,char*) ;
 int code ;
 int command (char*,char*) ;
 int printf (char*,char*) ;

void
sizecmd(int argc, char **argv)
{

 if (argc < 2 && !another(&argc, &argv, "filename")) {
  printf("usage: %s filename\n", argv[0]);
  code = -1;
  return;
 }
 command("SIZE %s", argv[1]);
}
