
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UPRINTF (char*,char*) ;
 int another (int*,char***,char*) ;
 int code ;
 int quote1 (char*,int,char**) ;

void
quote(int argc, char *argv[])
{

 if (argc == 0 ||
     (argc == 1 && !another(&argc, &argv, "command line to send"))) {
  UPRINTF("usage: %s line-to-send\n", argv[0]);
  code = -1;
  return;
 }
 quote1("", argc, argv);
}
