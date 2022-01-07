
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ti_siginfo; } ;
typedef TYPE_1__ td_thrinfo_t ;
typedef int td_thrhandle_t ;
typedef int td_old_thrinfo_t ;
typedef int td_err_e ;


 int bzero (int *,int) ;
 int pt_thr_old_get_info (int const*,int *) ;

__attribute__((used)) static td_err_e
pt_thr_get_info(const td_thrhandle_t *th, td_thrinfo_t *info)
{
 td_err_e e;

 e = pt_thr_old_get_info(th, (td_old_thrinfo_t *)info);
 bzero(&info->ti_siginfo, sizeof(info->ti_siginfo));
 return (e);
}
