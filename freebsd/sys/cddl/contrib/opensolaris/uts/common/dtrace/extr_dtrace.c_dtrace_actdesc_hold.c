
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dtad_refcnt; } ;
typedef TYPE_1__ dtrace_actdesc_t ;


 int ASSERT (int) ;

__attribute__((used)) static void
dtrace_actdesc_hold(dtrace_actdesc_t *act)
{
 ASSERT(act->dtad_refcnt >= 1);
 act->dtad_refcnt++;
}
