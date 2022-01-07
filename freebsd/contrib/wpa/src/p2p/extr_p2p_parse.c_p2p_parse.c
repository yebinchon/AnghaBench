
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p2p_message {int dialog_token; } ;


 int MSG_DEBUG ;
 int os_memset (struct p2p_message*,int ,int) ;
 int p2p_parse_ies (int const*,size_t,struct p2p_message*) ;
 int wpa_printf (int ,char*,...) ;

int p2p_parse(const u8 *data, size_t len, struct p2p_message *msg)
{
 os_memset(msg, 0, sizeof(*msg));
 wpa_printf(MSG_DEBUG, "P2P: Parsing the received message");
 if (len < 1) {
  wpa_printf(MSG_DEBUG, "P2P: No Dialog Token in the message");
  return -1;
 }
 msg->dialog_token = data[0];
 wpa_printf(MSG_DEBUG, "P2P: * Dialog Token: %d", msg->dialog_token);

 return p2p_parse_ies(data + 1, len - 1, msg);
}
