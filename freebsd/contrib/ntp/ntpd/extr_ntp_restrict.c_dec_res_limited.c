
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MON_RES ;
 int mon_stop (int ) ;
 int res_limited_refcnt ;

__attribute__((used)) static void
dec_res_limited(void)
{
 res_limited_refcnt--;
 if (!res_limited_refcnt)
  mon_stop(MON_RES);
}
