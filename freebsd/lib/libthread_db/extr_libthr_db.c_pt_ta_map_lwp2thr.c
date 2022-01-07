
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int td_thrhandle_t ;
typedef int td_thragent_t ;
typedef int td_err_e ;
typedef int lwpid_t ;


 int pt_ta_map_id2thr (int const*,int ,int *) ;

__attribute__((used)) static td_err_e
pt_ta_map_lwp2thr(const td_thragent_t *ta, lwpid_t lwp, td_thrhandle_t *th)
{
 return (pt_ta_map_id2thr(ta, lwp, th));
}
