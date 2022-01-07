
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ RMPCONN ;


 int FreeConn (TYPE_1__*) ;
 int * LastFree ;
 TYPE_1__* RmpConns ;
 int free (char*) ;

void
FreeConns(void)
{
 RMPCONN *rtmp;

 while (RmpConns != ((void*)0)) {
  rtmp = RmpConns;
  RmpConns = RmpConns->next;
  FreeConn(rtmp);
 }

 if (LastFree != ((void*)0)) {
  free((char *)LastFree);
  LastFree = ((void*)0);
 }
}
