
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct drr_freeobjects {scalar_t__ drr_firstobj; scalar_t__ drr_numobjs; int drr_toguid; } ;
struct TYPE_7__ {scalar_t__ dsa_pending_op; int dsa_toguid; TYPE_5__* dsa_drr; } ;
typedef TYPE_2__ dmu_sendarg_t ;
typedef int dmu_replay_record_t ;
struct TYPE_6__ {struct drr_freeobjects drr_freeobjects; } ;
struct TYPE_8__ {int drr_type; TYPE_1__ drr_u; } ;


 int DRR_FREEOBJECTS ;
 int EINTR ;
 scalar_t__ PENDING_FREEOBJECTS ;
 scalar_t__ PENDING_NONE ;
 int SET_ERROR (int ) ;
 int bzero (TYPE_5__*,int) ;
 scalar_t__ dump_record (TYPE_2__*,int *,int ) ;

__attribute__((used)) static int
dump_freeobjects(dmu_sendarg_t *dsp, uint64_t firstobj, uint64_t numobjs)
{
 struct drr_freeobjects *drrfo = &(dsp->dsa_drr->drr_u.drr_freeobjects);
 if (dsp->dsa_pending_op != PENDING_NONE &&
     dsp->dsa_pending_op != PENDING_FREEOBJECTS) {
  if (dump_record(dsp, ((void*)0), 0) != 0)
   return (SET_ERROR(EINTR));
  dsp->dsa_pending_op = PENDING_NONE;
 }
 if (dsp->dsa_pending_op == PENDING_FREEOBJECTS) {




  if (drrfo->drr_firstobj + drrfo->drr_numobjs == firstobj) {
   drrfo->drr_numobjs += numobjs;
   return (0);
  } else {

   if (dump_record(dsp, ((void*)0), 0) != 0)
    return (SET_ERROR(EINTR));
   dsp->dsa_pending_op = PENDING_NONE;
  }
 }


 bzero(dsp->dsa_drr, sizeof (dmu_replay_record_t));
 dsp->dsa_drr->drr_type = DRR_FREEOBJECTS;
 drrfo->drr_firstobj = firstobj;
 drrfo->drr_numobjs = numobjs;
 drrfo->drr_toguid = dsp->dsa_toguid;

 dsp->dsa_pending_op = PENDING_FREEOBJECTS;

 return (0);
}
