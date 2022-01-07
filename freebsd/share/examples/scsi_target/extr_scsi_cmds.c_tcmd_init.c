
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct initiator_state {int pending_ua; } ;
typedef int cam_status ;


 int MAX_INITIATORS ;
 int UA_POWER_ON ;
 int bzero (struct initiator_state*,int) ;
 int init_inquiry (int ,int ) ;
 struct initiator_state* tcmd_get_istate (int) ;

cam_status
tcmd_init(u_int16_t req_inq_flags, u_int16_t sim_inq_flags)
{
 struct initiator_state *istate;
 int i, ret;


 ret = init_inquiry(req_inq_flags, sim_inq_flags);
 if (ret != 0)
         return (ret);


 for (i = 0; i < MAX_INITIATORS; i++) {
  istate = tcmd_get_istate(i);
  bzero(istate, sizeof(*istate));
  istate->pending_ua = UA_POWER_ON;
 }

 return (0);
}
