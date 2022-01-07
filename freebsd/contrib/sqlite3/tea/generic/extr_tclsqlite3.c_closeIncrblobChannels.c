
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int channel; struct TYPE_5__* pNext; } ;
struct TYPE_4__ {int interp; TYPE_2__* pIncrblob; } ;
typedef TYPE_1__ SqliteDb ;
typedef TYPE_2__ IncrblobChannel ;


 int Tcl_UnregisterChannel (int ,int ) ;

__attribute__((used)) static void closeIncrblobChannels(SqliteDb *pDb){
  IncrblobChannel *p;
  IncrblobChannel *pNext;

  for(p=pDb->pIncrblob; p; p=pNext){
    pNext = p->pNext;





    Tcl_UnregisterChannel(pDb->interp, p->channel);
  }
}
