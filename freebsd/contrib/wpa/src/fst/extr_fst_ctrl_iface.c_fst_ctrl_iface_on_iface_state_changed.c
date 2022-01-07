
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int group_id; int ifname; int attached; } ;
union fst_event_extra {TYPE_1__ iface_state; } ;
struct fst_iface {int dummy; } ;
typedef int extra ;
typedef int Boolean ;


 int EVENT_FST_IFACE_STATE_CHANGED ;
 int FST_INVALID_SESSION_ID ;
 int fst_ctrl_iface_notify (struct fst_iface*,int ,int ,union fst_event_extra*) ;
 int fst_iface_get_group_id (struct fst_iface*) ;
 int fst_iface_get_name (struct fst_iface*) ;
 int os_memset (union fst_event_extra*,int ,int) ;
 int os_strlcpy (int ,int ,int) ;

__attribute__((used)) static void fst_ctrl_iface_on_iface_state_changed(struct fst_iface *i,
        Boolean attached)
{
 union fst_event_extra extra;

 os_memset(&extra, 0, sizeof(extra));
 extra.iface_state.attached = attached;
 os_strlcpy(extra.iface_state.ifname, fst_iface_get_name(i),
     sizeof(extra.iface_state.ifname));
 os_strlcpy(extra.iface_state.group_id, fst_iface_get_group_id(i),
     sizeof(extra.iface_state.group_id));

 fst_ctrl_iface_notify(i, FST_INVALID_SESSION_ID,
         EVENT_FST_IFACE_STATE_CHANGED, &extra);
}
