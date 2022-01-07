
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pv_entry_t ;


 int pv_entry_count ;
 int pvzone ;
 int uma_zfree (int ,int ) ;

__attribute__((used)) static void
pmap_free_pv_entry(pv_entry_t pv)
{
 pv_entry_count--;
 uma_zfree(pvzone, pv);
}
