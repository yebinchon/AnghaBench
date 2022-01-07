
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UPRINTF (char*,char*) ;
 int code ;
 scalar_t__ connected ;
 int disconnect (int ,int *) ;
 int exit (int ) ;
 int pswitch (int) ;

void
quit(int argc, char *argv[])
{


 if (argc == 0 && argv != ((void*)0)) {
  UPRINTF("usage: %s\n", argv[0]);
  code = -1;
  return;
 }
 if (connected)
  disconnect(0, ((void*)0));
 pswitch(1);
 if (connected)
  disconnect(0, ((void*)0));
 exit(0);
}
