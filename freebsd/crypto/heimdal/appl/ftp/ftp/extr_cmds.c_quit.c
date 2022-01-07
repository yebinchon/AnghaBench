
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ connected ;
 int disconnect (int ,int ) ;
 int exit (int ) ;
 int pswitch (int) ;

void
quit(int argc, char **argv)
{

 if (connected)
  disconnect(0, 0);
 pswitch(1);
 if (connected) {
  disconnect(0, 0);
 }
 exit(0);
}
