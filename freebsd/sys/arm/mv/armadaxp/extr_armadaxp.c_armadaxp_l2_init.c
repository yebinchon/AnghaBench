
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int ARMADAXP_L2_AUX_CTRL ;
 int ARMADAXP_L2_CNTR_CONF (int) ;
 int ARMADAXP_L2_CNTR_CTRL ;
 int ARMADAXP_L2_CTRL ;
 int ARMADAXP_L2_INT_CAUSE ;
 int COHER_FABRIC_CFU ;
 int COHER_FABRIC_CIB_CTRL ;
 int L2_ENABLE ;
 int L2_REP_STRAT_MASK ;
 int L2_REP_STRAT_SEMIPLRU ;
 int L2_WBWT_MODE_MASK ;
 int L2_WBWT_MODE_WT ;
 int armadaxp_l2_idcache_inv_all () ;
 int read_coher_fabric (int ) ;
 int read_l2_cache (int ) ;
 int write_coher_fabric (int ,int) ;
 int write_l2_cache (int ,int) ;

void
armadaxp_l2_init(void)
{
 u_int32_t reg;


 reg = read_l2_cache(ARMADAXP_L2_AUX_CTRL);
 reg &= ~(L2_WBWT_MODE_MASK);
 reg &= ~(L2_REP_STRAT_MASK);
 reg |= L2_REP_STRAT_SEMIPLRU;
 reg |= L2_WBWT_MODE_WT;
 write_l2_cache(ARMADAXP_L2_AUX_CTRL, reg);


 armadaxp_l2_idcache_inv_all();


 write_l2_cache(ARMADAXP_L2_INT_CAUSE, 0x1ff);


 reg = read_l2_cache(ARMADAXP_L2_CTRL);
 write_l2_cache(ARMADAXP_L2_CTRL, reg | L2_ENABLE);





 write_l2_cache(ARMADAXP_L2_CNTR_CONF(0), 0xf0000 | (4 << 2));
 write_l2_cache(ARMADAXP_L2_CNTR_CONF(1), 0xf0000 | (2 << 2));
 write_l2_cache(ARMADAXP_L2_CNTR_CTRL, 0x303);





 reg = read_coher_fabric(COHER_FABRIC_CFU);
 reg |= (1 << 17) | (1 << 18);
 write_coher_fabric(COHER_FABRIC_CFU, reg);


 reg = read_coher_fabric(COHER_FABRIC_CIB_CTRL);
 reg &= ~(7 << 16);
 reg |= (7 << 16);
 write_coher_fabric(COHER_FABRIC_CIB_CTRL, reg);
}
