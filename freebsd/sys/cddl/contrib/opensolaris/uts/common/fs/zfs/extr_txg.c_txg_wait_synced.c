
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dsl_pool_t ;


 int B_FALSE ;
 int VERIFY0 (int ) ;
 int txg_wait_synced_impl (int *,int ,int ) ;

void
txg_wait_synced(dsl_pool_t *dp, uint64_t txg)
{
 VERIFY0(txg_wait_synced_impl(dp, txg, B_FALSE));
}
