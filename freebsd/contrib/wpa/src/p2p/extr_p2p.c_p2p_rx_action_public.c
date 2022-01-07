
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p2p_data {int dummy; } ;


 int P2P_IE_VENDOR_TYPE ;





 int WPA_GET_BE32 (int const*) ;
 int p2p_rx_gas_comeback_req (struct p2p_data*,int const*,int const*,size_t,int) ;
 int p2p_rx_gas_comeback_resp (struct p2p_data*,int const*,int const*,size_t,int) ;
 int p2p_rx_gas_initial_req (struct p2p_data*,int const*,int const*,size_t,int) ;
 int p2p_rx_gas_initial_resp (struct p2p_data*,int const*,int const*,size_t,int) ;
 int p2p_rx_p2p_action (struct p2p_data*,int const*,int const*,size_t,int) ;

__attribute__((used)) static void p2p_rx_action_public(struct p2p_data *p2p, const u8 *da,
     const u8 *sa, const u8 *bssid, const u8 *data,
     size_t len, int freq)
{
 if (len < 1)
  return;

 switch (data[0]) {
 case 128:
  data++;
  len--;
  if (len < 4)
   return;
  if (WPA_GET_BE32(data) != P2P_IE_VENDOR_TYPE)
   return;

  data += 4;
  len -= 4;

  p2p_rx_p2p_action(p2p, sa, data, len, freq);
  break;
 case 130:
  p2p_rx_gas_initial_req(p2p, sa, data + 1, len - 1, freq);
  break;
 case 129:
  p2p_rx_gas_initial_resp(p2p, sa, data + 1, len - 1, freq);
  break;
 case 132:
  p2p_rx_gas_comeback_req(p2p, sa, data + 1, len - 1, freq);
  break;
 case 131:
  p2p_rx_gas_comeback_resp(p2p, sa, data + 1, len - 1, freq);
  break;
 }
}
