
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int libthr_debug_addr; int ph; } ;
typedef TYPE_1__ td_thragent_t ;
typedef int td_err_e ;


 int TDBG_FUNC () ;
 int TD_OK ;
 int free (TYPE_1__*) ;
 int ps_pwrite (int ,int ,int*,int) ;

__attribute__((used)) static td_err_e
pt_ta_delete(td_thragent_t *ta)
{
 int dbg;

 TDBG_FUNC();

 dbg = 0;




 ps_pwrite(ta->ph, ta->libthr_debug_addr, &dbg, sizeof(int));
 free(ta);
 return (TD_OK);
}
