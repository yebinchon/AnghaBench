
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COMPLETE ;
 int UPRINTF (char*,char*) ;
 int another (int*,char***,char*) ;
 int code ;
 scalar_t__ command (char*,char*) ;
 int dirchange ;

void
delete(int argc, char *argv[])
{

 if (argc == 0 || argc > 2 ||
     (argc == 1 && !another(&argc, &argv, "remote-file"))) {
  UPRINTF("usage: %s remote-file\n", argv[0]);
  code = -1;
  return;
 }
 if (command("DELE %s", argv[1]) == COMPLETE)
  dirchange = 1;
}
