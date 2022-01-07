
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ RMPCONN ;


 int FreeConn (TYPE_1__*) ;
 TYPE_1__* RmpConns ;

void
RemoveConn(RMPCONN *rconn)
{
 RMPCONN *thisrconn, *lastrconn;

 if (RmpConns == rconn) {
  RmpConns = RmpConns->next;
  FreeConn(rconn);
 } else {
  lastrconn = RmpConns;
  thisrconn = lastrconn->next;
  while (thisrconn != ((void*)0)) {
   if (rconn == thisrconn) {
    lastrconn->next = thisrconn->next;
    FreeConn(thisrconn);
    break;
   }
   lastrconn = thisrconn;
   thisrconn = thisrconn->next;
  }
 }
}
