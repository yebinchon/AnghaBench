
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccb_scsiio {int dummy; } ;
struct TYPE_2__ {scalar_t__ targ_descr; } ;
struct ccb_accept_tio {int init_id; TYPE_1__ ccb_h; } ;
struct atio_descr {int cdb; } ;


 int SSD_KEY_ILLEGAL_REQUEST ;
 int cdb_debug (int ,char*,int ) ;
 scalar_t__ debug ;
 int tcmd_sense (int ,struct ccb_scsiio*,int ,int,int ) ;

__attribute__((used)) static int
tcmd_illegal_req(struct ccb_accept_tio *atio, struct ccb_scsiio *ctio)
{
 if (debug) {
  struct atio_descr *a_descr;

  a_descr = (struct atio_descr *)atio->ccb_h.targ_descr;
  cdb_debug(a_descr->cdb, "Sending ill req to %u: ", atio->init_id);
 }

 tcmd_sense(atio->init_id, ctio, SSD_KEY_ILLEGAL_REQUEST,
            0x24, 0);
 return (0);
}
