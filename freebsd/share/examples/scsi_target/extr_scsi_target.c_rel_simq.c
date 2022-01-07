
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct TYPE_2__ {int func_code; } ;
struct ccb_relsim {scalar_t__ qfrozen_cnt; scalar_t__ release_timeout; scalar_t__ openings; int release_flags; TYPE_1__ ccb_h; } ;
typedef int crs ;


 int RELSIM_RELEASE_AFTER_QEMPTY ;
 int XPT_REL_SIMQ ;
 int bzero (struct ccb_relsim*,int) ;
 int send_ccb (union ccb*,int ) ;

__attribute__((used)) static void
rel_simq()
{
 struct ccb_relsim crs;

 bzero(&crs, sizeof(crs));
 crs.ccb_h.func_code = XPT_REL_SIMQ;
 crs.release_flags = RELSIM_RELEASE_AFTER_QEMPTY;
 crs.openings = 0;
 crs.release_timeout = 0;
 crs.qfrozen_cnt = 0;
 send_ccb((union ccb *)&crs, 0);
}
