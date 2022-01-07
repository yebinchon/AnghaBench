
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_serdes_grp_obj {int dummy; } ;


 int AL_SRDS_LANE_0 ;
 int AL_SRDS_NUM_LANES ;
 int _al_serdes_lane_rx_rate_change_sw_flow_dis (struct al_serdes_grp_obj*,int) ;

__attribute__((used)) static void al_serdes_group_rx_rate_change_sw_flow_dis(
 struct al_serdes_grp_obj *obj)
{
 int lane;

 for (lane = AL_SRDS_LANE_0; lane < AL_SRDS_NUM_LANES; lane++)
  _al_serdes_lane_rx_rate_change_sw_flow_dis(obj, lane);
}
