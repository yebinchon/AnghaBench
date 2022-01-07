
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int regused; scalar_t__ curreg; } ;
typedef TYPE_1__ compiler_state_t ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void
init_regs(compiler_state_t *cstate)
{
 cstate->curreg = 0;
 memset(cstate->regused, 0, sizeof cstate->regused);
}
