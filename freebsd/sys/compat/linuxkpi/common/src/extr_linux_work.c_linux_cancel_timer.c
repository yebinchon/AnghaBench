
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int callout; int mtx; } ;
struct delayed_work {TYPE_1__ timer; } ;


 int callout_drain (int *) ;
 int callout_stop (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static inline bool
linux_cancel_timer(struct delayed_work *dwork, bool drain)
{
 bool cancelled;

 mtx_lock(&dwork->timer.mtx);
 cancelled = (callout_stop(&dwork->timer.callout) == 1);
 mtx_unlock(&dwork->timer.mtx);


 if (drain)
  callout_drain(&dwork->timer.callout);
 return (cancelled);
}
