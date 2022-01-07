
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct drr_spill {int drr_length; int drr_toguid; int drr_object; } ;
struct TYPE_7__ {scalar_t__ dsa_pending_op; int dsa_toguid; TYPE_5__* dsa_drr; } ;
typedef TYPE_2__ dmu_sendarg_t ;
typedef int dmu_replay_record_t ;
struct TYPE_6__ {struct drr_spill drr_spill; } ;
struct TYPE_8__ {int drr_type; TYPE_1__ drr_u; } ;


 int DRR_SPILL ;
 int EINTR ;
 scalar_t__ PENDING_NONE ;
 int SET_ERROR (int ) ;
 int bzero (TYPE_5__*,int) ;
 scalar_t__ dump_record (TYPE_2__*,void*,int) ;

__attribute__((used)) static int
dump_spill(dmu_sendarg_t *dsp, uint64_t object, int blksz, void *data)
{
 struct drr_spill *drrs = &(dsp->dsa_drr->drr_u.drr_spill);

 if (dsp->dsa_pending_op != PENDING_NONE) {
  if (dump_record(dsp, ((void*)0), 0) != 0)
   return (SET_ERROR(EINTR));
  dsp->dsa_pending_op = PENDING_NONE;
 }


 bzero(dsp->dsa_drr, sizeof (dmu_replay_record_t));
 dsp->dsa_drr->drr_type = DRR_SPILL;
 drrs->drr_object = object;
 drrs->drr_length = blksz;
 drrs->drr_toguid = dsp->dsa_toguid;

 if (dump_record(dsp, data, blksz) != 0)
  return (SET_ERROR(EINTR));
 return (0);
}
