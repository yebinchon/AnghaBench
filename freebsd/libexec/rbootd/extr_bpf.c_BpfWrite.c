
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rmplen; int rmp; } ;
typedef TYPE_1__ RMPCONN ;


 int BpfFd ;
 int EnetStr (TYPE_1__*) ;
 int LOG_ERR ;
 int syslog (int ,char*,int ) ;
 scalar_t__ write (int ,char*,int ) ;

int
BpfWrite(RMPCONN *rconn)
{
 if (write(BpfFd, (char *)&rconn->rmp, rconn->rmplen) < 0) {
  syslog(LOG_ERR, "write: %s: %m", EnetStr(rconn));
  return(0);
 }

 return(1);
}
