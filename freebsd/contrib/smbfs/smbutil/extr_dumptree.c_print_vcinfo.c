
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t sv_proto; int sv_maxvcs; int sv_maxmux; int sv_caps; int sv_sm; } ;
struct smb_vc_info {char* srvname; char* vcname; int mode; size_t iodstate; TYPE_1__ sopt; int usecount; int flags; int gid; int uid; } ;


 int conn_caps ;
 int * conn_proto ;
 char* group_from_gid (int ,int ) ;
 int * iod_state ;
 int iprintf (int,char*,size_t,...) ;
 int printf (char*,...) ;
 int smb_printb (char*,int ,int ) ;
 char* user_from_uid (int ,int ) ;
 int vc_flags ;
 int verbose ;

__attribute__((used)) static void
print_vcinfo(struct smb_vc_info *vip)
{
 char buf[200];

 printf("VC: \\\\%s\\%s\n", vip->srvname, vip->vcname);
 printf("(%s:%s) %o", user_from_uid(vip->uid, 0),
     group_from_gid(vip->gid, 0), vip->mode);
 printf("\n");
 if (!verbose)
  return;
 iprintf(4, "state:    %s\n", iod_state[vip->iodstate]);
 iprintf(4, "flags:    0x%04x %s\n", vip->flags,
     smb_printb(buf, vip->flags, vc_flags));
 iprintf(4, "usecount: %d\n", vip->usecount);
 iprintf(4, "dialect:  %d (%s)\n", vip->sopt.sv_proto, conn_proto[vip->sopt.sv_proto]);
 iprintf(4, "smode:    %d\n", vip->sopt.sv_sm);
 iprintf(4, "caps:     0x%04x %s\n", vip->sopt.sv_caps,
     smb_printb(buf, vip->sopt.sv_caps, conn_caps));
 iprintf(4, "maxmux:   %d\n", vip->sopt.sv_maxmux);
 iprintf(4, "maxvcs:   %d\n", vip->sopt.sv_maxvcs);
}
