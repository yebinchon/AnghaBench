
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int command (char*) ;
 scalar_t__ connected ;
 int * cout ;
 int data ;
 int fclose (int *) ;
 scalar_t__ macnum ;
 int proxy ;
 int sec_end () ;

void
disconnect(int argc, char **argv)
{

 if (!connected)
  return;
 command("QUIT");
 if (cout) {
  fclose(cout);
 }
 cout = ((void*)0);
 connected = 0;
 sec_end();
 data = -1;
 if (!proxy) {
  macnum = 0;
 }
}
