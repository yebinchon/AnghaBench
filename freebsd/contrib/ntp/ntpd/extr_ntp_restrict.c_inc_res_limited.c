
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MON_RES ;
 int mon_start (int ) ;
 int res_limited_refcnt ;

__attribute__((used)) static void
inc_res_limited(void)
{
 if (!res_limited_refcnt)
  mon_start(MON_RES);
 res_limited_refcnt++;
}
