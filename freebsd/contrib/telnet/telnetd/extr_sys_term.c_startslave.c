
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int auth_level ;
 int exit (int) ;
 int fatal (int ,char*) ;
 int fatalperror (int ,char*) ;
 int fork () ;
 int getptyslave () ;
 int net ;
 int start_login (char*,int,char*) ;

void
startslave(char *host, int autologin, char *autoname)
{
 int i;
 if ((i = fork()) < 0)
  fatalperror(net, "fork");
 if (i) {
 } else {
  getptyslave();
  start_login(host, autologin, autoname);

 }
}
