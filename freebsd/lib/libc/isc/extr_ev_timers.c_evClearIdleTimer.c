
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int idle_timer ;
struct TYPE_5__ {TYPE_2__* opaque; } ;
typedef TYPE_1__ evTimerID ;
struct TYPE_6__ {int * uap; } ;
typedef TYPE_2__ evTimer ;
typedef int evContext ;


 int FREE (int *) ;
 int evClearTimer (int ,TYPE_1__) ;

int
evClearIdleTimer(evContext opaqueCtx, evTimerID id) {
 evTimer *del = id.opaque;
 idle_timer *tt = del->uap;

 FREE(tt);
 return (evClearTimer(opaqueCtx, id));
}
