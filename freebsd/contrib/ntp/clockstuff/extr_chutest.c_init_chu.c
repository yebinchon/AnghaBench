
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int l_uf; scalar_t__ l_ui; } ;
struct TYPE_6__ {int l_uf; scalar_t__ l_ui; } ;


 int DEFFILTFUDGE ;
 int DEFPROPDELAY ;
 int L_ADD (TYPE_1__*,TYPE_3__*) ;
 TYPE_3__ fudgefactor ;
 TYPE_1__ offset_fudge ;
 TYPE_1__ propagation_delay ;
 scalar_t__ yearstart ;

void
init_chu(void)
{




 propagation_delay.l_ui = 0;
 propagation_delay.l_uf = DEFPROPDELAY;
 fudgefactor.l_ui = 0;
 fudgefactor.l_uf = DEFFILTFUDGE;
 offset_fudge = propagation_delay;
 L_ADD(&offset_fudge, &fudgefactor);

 yearstart = 0;
}
