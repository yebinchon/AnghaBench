
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* dcr_cred; } ;
struct TYPE_7__ {TYPE_1__ dts_cred; } ;
typedef TYPE_2__ dtrace_state_t ;
struct TYPE_8__ {scalar_t__ cr_zone; } ;
typedef TYPE_3__ cred_t ;


 int ASSERT (int ) ;
 TYPE_3__* CRED () ;

__attribute__((used)) static int
dtrace_priv_proc_common_zone(dtrace_state_t *state)
{
 return (1);

}
