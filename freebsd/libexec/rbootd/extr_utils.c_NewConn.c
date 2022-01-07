
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bootfd; int * next; } ;
typedef TYPE_1__ RMPCONN ;


 int EnetStr (TYPE_1__*) ;
 int LOG_ERR ;
 TYPE_1__* LastFree ;
 scalar_t__ malloc (int) ;
 int memmove (char*,char*,int) ;
 int syslog (int ,char*,int ) ;

RMPCONN *
NewConn(RMPCONN *rconn)
{
 RMPCONN *rtmp;

 if (LastFree == ((void*)0)) {
  if ((rtmp = (RMPCONN *) malloc(sizeof(RMPCONN))) == ((void*)0)) {
   syslog(LOG_ERR, "NewConn: out of memory (%s)",
          EnetStr(rconn));
   return(((void*)0));
  }
 } else {
  rtmp = LastFree;
  LastFree = ((void*)0);
 }





 memmove((char *)rtmp, (char *)rconn, sizeof(RMPCONN));
 rtmp->bootfd = -1;
 rtmp->next = ((void*)0);

 return(rtmp);
}
