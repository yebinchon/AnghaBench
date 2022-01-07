
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int td_thrinfo_t ;
typedef int td_thrhandle_t ;
typedef int td_err_e ;


 int pt_thr_get_info_common (int const*,int *,int ) ;

__attribute__((used)) static td_err_e
pt_thr_get_info(const td_thrhandle_t *th, td_thrinfo_t *info)
{

 return (pt_thr_get_info_common(th, info, 0));
}
