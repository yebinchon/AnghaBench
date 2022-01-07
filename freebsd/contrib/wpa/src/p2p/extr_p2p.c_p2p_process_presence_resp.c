
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct p2p_message {int noa_len; int * noa; scalar_t__* status; } ;
struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {int cb_ctx; int (* presence_resp ) (int ,int const*,scalar_t__,int *,int ) ;} ;


 int MSG_DEBUG ;
 int p2p_dbg (struct p2p_data*,char*,...) ;
 scalar_t__ p2p_parse (int const*,size_t,struct p2p_message*) ;
 int p2p_parse_free (struct p2p_message*) ;
 int stub1 (int ,int const*,scalar_t__,int *,int ) ;
 int wpa_hexdump (int ,char*,int *,int ) ;

__attribute__((used)) static void p2p_process_presence_resp(struct p2p_data *p2p, const u8 *da,
          const u8 *sa, const u8 *data, size_t len)
{
 struct p2p_message msg;

 p2p_dbg(p2p, "Received P2P Action - P2P Presence Response");

 if (p2p_parse(data, len, &msg) < 0) {
  p2p_dbg(p2p, "Failed to parse P2P Presence Response");
  return;
 }

 if (msg.status == ((void*)0) || msg.noa == ((void*)0)) {
  p2p_dbg(p2p, "No Status or NoA attribute in P2P Presence Response");
  p2p_parse_free(&msg);
  return;
 }

 if (p2p->cfg->presence_resp) {
  p2p->cfg->presence_resp(p2p->cfg->cb_ctx, sa, *msg.status,
     msg.noa, msg.noa_len);
 }

 if (*msg.status) {
  p2p_dbg(p2p, "P2P Presence Request was rejected: status %u",
   *msg.status);
  p2p_parse_free(&msg);
  return;
 }

 p2p_dbg(p2p, "P2P Presence Request was accepted");
 wpa_hexdump(MSG_DEBUG, "P2P: P2P Presence Response - NoA",
      msg.noa, msg.noa_len);

 p2p_parse_free(&msg);
}
