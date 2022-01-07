
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pv_entry_t ;


 int M_NOWAIT ;
 int pagedaemon_wakeup (int ) ;
 scalar_t__ pv_entry_count ;
 scalar_t__ pv_entry_high_water ;
 int pvzone ;
 int uma_zalloc (int ,int ) ;

__attribute__((used)) static pv_entry_t
pmap_get_pv_entry(void)
{
 pv_entry_t ret_value;

 pv_entry_count++;
 if (pv_entry_count > pv_entry_high_water)
  pagedaemon_wakeup(0);
 ret_value = uma_zalloc(pvzone, M_NOWAIT);
 return ret_value;
}
