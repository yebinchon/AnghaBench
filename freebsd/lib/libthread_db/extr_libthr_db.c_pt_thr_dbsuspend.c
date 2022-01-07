
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int td_thrhandle_t ;
typedef int td_err_e ;


 int TDBG_FUNC () ;
 int pt_dbsuspend (int const*,int) ;

__attribute__((used)) static td_err_e
pt_thr_dbsuspend(const td_thrhandle_t *th)
{
 TDBG_FUNC();

 return pt_dbsuspend(th, 1);
}
