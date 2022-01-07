
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cur_snaplen ;
 int filename ;
 int interface ;
 int setproctitle (char*,char*,int ,int ,int ) ;
 int suspended ;

void
set_suspended(int s)
{
 if (suspended == s)
  return;

 suspended = s;
 setproctitle("[%s] -s %d -i %s -f %s",
     suspended ? "suspended" : "running",
     cur_snaplen, interface, filename);
}
