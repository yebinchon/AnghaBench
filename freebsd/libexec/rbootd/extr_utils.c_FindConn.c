
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * saddr; } ;
struct TYPE_8__ {TYPE_1__ hp_hdr; } ;
struct TYPE_9__ {TYPE_2__ rmp; struct TYPE_9__* next; } ;
typedef TYPE_3__ RMPCONN ;


 int RMP_ADDRLEN ;
 TYPE_3__* RmpConns ;
 scalar_t__ bcmp (char*,char*,int ) ;

RMPCONN *
FindConn(RMPCONN *rconn)
{
 RMPCONN *rtmp;

 for (rtmp = RmpConns; rtmp != ((void*)0); rtmp = rtmp->next)
  if (bcmp((char *)&rconn->rmp.hp_hdr.saddr[0],
           (char *)&rtmp->rmp.hp_hdr.saddr[0], RMP_ADDRLEN) == 0)
   break;

 return(rtmp);
}
