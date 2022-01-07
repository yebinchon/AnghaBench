
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_res ;
 int res_key ;
 int res_thr_keycreated ;
 scalar_t__ thr_keycreate (int *,int ) ;

__attribute__((used)) static void
res_keycreate(void)
{
 res_thr_keycreated = thr_keycreate(&res_key, free_res) == 0;
}
