
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pm_callback; } ;


 int MTX_DEF ;
 int MTX_RECURSE ;
 TYPE_1__* callout_msg ;
 int callout_proc_msg ;
 int mtx_callout ;
 int mtx_init (int *,char*,int *,int) ;

__attribute__((used)) static void
callout_system_init(void *arg)
{
 mtx_init(&mtx_callout, "callout-mtx", ((void*)0), MTX_DEF | MTX_RECURSE);

 callout_msg[0].pm_callback = &callout_proc_msg;
 callout_msg[1].pm_callback = &callout_proc_msg;
}
