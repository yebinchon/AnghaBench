
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_8__ {int r_type; } ;
struct TYPE_7__ {scalar_t__ tv_sec; } ;
struct TYPE_9__ {TYPE_2__ rmp; TYPE_1__ tstamp; struct TYPE_9__* next; } ;
typedef TYPE_3__ RMPCONN ;


 int EnetStr (TYPE_3__*) ;
 int LOG_WARNING ;
 scalar_t__ RMP_TIMEOUT ;
 int RemoveConn (TYPE_3__*) ;
 TYPE_3__* RmpConns ;
 int syslog (int ,char*,int ,int ) ;
 scalar_t__ time (int *) ;

void
DoTimeout(void)
{
 RMPCONN *rtmp;
 time_t now;





 now = time(((void*)0));
 for (rtmp = RmpConns; rtmp != ((void*)0); rtmp = rtmp->next)
  if ((rtmp->tstamp.tv_sec + RMP_TIMEOUT) < now) {
   syslog(LOG_WARNING, "%s: connection timed out (%u)",
          EnetStr(rtmp), rtmp->rmp.r_type);
   RemoveConn(rtmp);
  }
}
