
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_FmDriverParam; int p_FmBmiRegs; } ;
typedef TYPE_1__ t_Fm ;
typedef int t_Error ;


 int fman_bmi_init (int ,int ) ;

__attribute__((used)) static t_Error InitFmBmi(t_Fm *p_Fm)
{
    return (t_Error)fman_bmi_init(p_Fm->p_FmBmiRegs, p_Fm->p_FmDriverParam);
}
