
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int maskurg (int) ;
 scalar_t__ recvurg ;
 int syslog (int ,char*) ;
 int transflag ;

__attribute__((used)) static void
flagxfer(int flag)
{

 if (flag) {
  if (transflag)
   syslog(LOG_ERR, "Internal: flagxfer(1): "
     "transfer already under way");
  transflag = 1;
  maskurg(0);
  recvurg = 0;
 } else {
  if (!transflag)
   syslog(LOG_ERR, "Internal: flagxfer(0): "
     "no active transfer");
  maskurg(1);
  transflag = 0;
 }
}
