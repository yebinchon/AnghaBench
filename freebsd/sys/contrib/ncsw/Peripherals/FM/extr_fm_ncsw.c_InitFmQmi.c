
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_FmDriverParam; int p_FmQmiRegs; } ;
typedef TYPE_1__ t_Fm ;
typedef int t_Error ;


 int fman_qmi_init (int ,int ) ;

__attribute__((used)) static t_Error InitFmQmi(t_Fm *p_Fm)
{
    return (t_Error)fman_qmi_init(p_Fm->p_FmQmiRegs, p_Fm->p_FmDriverParam);
}
