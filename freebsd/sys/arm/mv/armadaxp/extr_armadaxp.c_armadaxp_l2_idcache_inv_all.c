
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALL_WAYS ;
 int ARMADAXP_L2_INV_WAY ;
 int write_l2_cache (int ,int ) ;

__attribute__((used)) static void
armadaxp_l2_idcache_inv_all(void)
{
 write_l2_cache(ARMADAXP_L2_INV_WAY, ALL_WAYS);
}
