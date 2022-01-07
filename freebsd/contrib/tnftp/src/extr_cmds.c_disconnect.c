
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UPRINTF (char*,char*) ;
 int cleanuppeer () ;
 int code ;
 int command (char*) ;
 int connected ;

void
disconnect(int argc, char *argv[])
{


 if (argc == 0 && argv != ((void*)0)) {
  UPRINTF("usage: %s\n", argv[0]);
  code = -1;
  return;
 }
 if (!connected)
  return;
 (void)command("QUIT");
 cleanuppeer();
}
