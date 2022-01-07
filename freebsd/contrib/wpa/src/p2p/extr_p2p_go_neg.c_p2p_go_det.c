
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int P2P_MAX_GO_INTENT ;

__attribute__((used)) static int p2p_go_det(u8 own_intent, u8 peer_value)
{
 u8 peer_intent = peer_value >> 1;
 if (own_intent == peer_intent) {
  if (own_intent == P2P_MAX_GO_INTENT)
   return -1;


  return (peer_value & 0x01) ? 0 : 1;
 }

 return own_intent > peer_intent;
}
