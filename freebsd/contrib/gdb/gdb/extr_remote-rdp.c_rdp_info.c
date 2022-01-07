
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int step_info; int target_info; int can_step; int rdi_level; int model_info; int break_info; } ;


 int RDP_INFO ;
 int RDP_INFO_ABOUT_BREAK ;
 int RDP_INFO_ABOUT_STEP ;
 int RDP_INFO_ABOUT_STEP_1 ;
 int RDP_INFO_ABOUT_TARGET ;
 TYPE_1__ ds ;
 int send_rdp (char*,int ,int ,int*,...) ;

__attribute__((used)) static void
rdp_info (void)
{
  send_rdp ("bw-S-W-Z", RDP_INFO, RDP_INFO_ABOUT_STEP,
     &ds.step_info);
  send_rdp ("bw-S-W-Z", RDP_INFO, RDP_INFO_ABOUT_BREAK,
     &ds.break_info);
  send_rdp ("bw-S-WW-Z", RDP_INFO, RDP_INFO_ABOUT_TARGET,
     &ds.target_info,
     &ds.model_info);

  ds.can_step = ds.step_info & RDP_INFO_ABOUT_STEP_1;

  ds.rdi_level = (ds.target_info >> 5) & 3;
}
