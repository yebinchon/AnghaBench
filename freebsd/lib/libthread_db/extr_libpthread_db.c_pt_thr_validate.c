
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int th_tid; int th_ta; } ;
typedef TYPE_1__ td_thrhandle_t ;
typedef int td_err_e ;


 int TDBG_FUNC () ;
 int pt_ta_map_id2thr (int ,int ,TYPE_1__*) ;

__attribute__((used)) static td_err_e
pt_thr_validate(const td_thrhandle_t *th)
{
 td_thrhandle_t temp;
 int ret;

 TDBG_FUNC();

 ret = pt_ta_map_id2thr(th->th_ta, th->th_tid,
                        &temp);
 return (ret);
}
