
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ua_types ;
typedef scalar_t__ u_int ;
struct initiator_state {int pending_ua; } ;


 scalar_t__ CAM_TARGET_WILDCARD ;
 scalar_t__ MAX_INITIATORS ;
 struct initiator_state* tcmd_get_istate (scalar_t__) ;

void
tcmd_ua(u_int init_id, ua_types new_ua)
{
 struct initiator_state *istate;
 u_int start, end;

 if (init_id == CAM_TARGET_WILDCARD) {
  start = 0;
  end = MAX_INITIATORS - 1;
 } else {
  start = end = init_id;
 }

 for (; start <= end; start++) {
  istate = tcmd_get_istate(start);
  if (istate == ((void*)0))
   break;
  istate->pending_ua = new_ua;
 }
}
