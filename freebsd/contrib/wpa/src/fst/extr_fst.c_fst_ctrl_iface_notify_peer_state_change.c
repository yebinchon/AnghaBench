
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; int ifname; int connected; } ;
union fst_event_extra {TYPE_1__ peer_state; } ;
typedef int u8 ;
struct fst_iface {int dummy; } ;
typedef int Boolean ;


 int ETH_ALEN ;
 int EVENT_PEER_STATE_CHANGED ;
 int foreach_fst_ctrl_call (int ,int ,struct fst_iface*,int *,union fst_event_extra*) ;
 int fst_iface_get_name (struct fst_iface*) ;
 int on_event ;
 int os_memcpy (int ,int const*,int ) ;
 int os_strlcpy (int ,int ,int) ;

__attribute__((used)) static void fst_ctrl_iface_notify_peer_state_change(struct fst_iface *iface,
          Boolean connected,
          const u8 *peer_addr)
{
 union fst_event_extra extra;

 extra.peer_state.connected = connected;
 os_strlcpy(extra.peer_state.ifname, fst_iface_get_name(iface),
     sizeof(extra.peer_state.ifname));
 os_memcpy(extra.peer_state.addr, peer_addr, ETH_ALEN);

 foreach_fst_ctrl_call(on_event, EVENT_PEER_STATE_CHANGED,
         iface, ((void*)0), &extra);
}
