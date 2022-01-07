
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ctl_req {void* status; int error_str; int args_nvl; } ;
struct cfiscsi_target {int ct_port; int ct_state; } ;


 int CFISCSI_TARGET_STATE_DYING ;
 void* CTL_LUN_ERROR ;
 void* CTL_LUN_OK ;
 int cfiscsi_softc ;
 struct cfiscsi_target* cfiscsi_target_find (int *,char const*,int ) ;
 int cfiscsi_target_release (struct cfiscsi_target*) ;
 int ctl_port_offline (int *) ;
 char* dnvlist_get_string (int ,char*,int *) ;
 int snprintf (int ,int,char*,...) ;
 int strtoul (char const*,int *,int ) ;

__attribute__((used)) static void
cfiscsi_ioctl_port_remove(struct ctl_req *req)
{
 struct cfiscsi_target *ct;
 const char *target, *val;
 uint16_t tag;

 target = dnvlist_get_string(req->args_nvl, "cfiscsi_target", ((void*)0));
 val = dnvlist_get_string(req->args_nvl, "cfiscsi_portal_group_tag",
     ((void*)0));

 if (target == ((void*)0) || val == ((void*)0)) {
  req->status = CTL_LUN_ERROR;
  snprintf(req->error_str, sizeof(req->error_str),
      "Missing required argument");
  return;
 }

 tag = strtoul(val, ((void*)0), 0);
 ct = cfiscsi_target_find(&cfiscsi_softc, target, tag);
 if (ct == ((void*)0)) {
  req->status = CTL_LUN_ERROR;
  snprintf(req->error_str, sizeof(req->error_str),
      "can't find target \"%s\"", target);
  return;
 }

 ct->ct_state = CFISCSI_TARGET_STATE_DYING;
 ctl_port_offline(&ct->ct_port);
 cfiscsi_target_release(ct);
 cfiscsi_target_release(ct);
 req->status = CTL_LUN_OK;
}
