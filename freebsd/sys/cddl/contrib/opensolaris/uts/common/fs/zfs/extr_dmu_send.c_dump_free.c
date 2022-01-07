
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct drr_free {scalar_t__ drr_object; scalar_t__ drr_offset; scalar_t__ drr_length; int drr_toguid; } ;
struct TYPE_7__ {scalar_t__ dsa_last_data_object; scalar_t__ dsa_last_data_offset; scalar_t__ dsa_pending_op; int dsa_toguid; TYPE_5__* dsa_drr; } ;
typedef TYPE_2__ dmu_sendarg_t ;
typedef int dmu_replay_record_t ;
struct TYPE_6__ {struct drr_free drr_free; } ;
struct TYPE_8__ {int drr_type; TYPE_1__ drr_u; } ;


 int ASSERT (int) ;
 int DRR_FREE ;
 int EINTR ;
 scalar_t__ PENDING_FREE ;
 scalar_t__ PENDING_NONE ;
 int SET_ERROR (int ) ;
 int bzero (TYPE_5__*,int) ;
 scalar_t__ dump_record (TYPE_2__*,int *,int ) ;

__attribute__((used)) static int
dump_free(dmu_sendarg_t *dsp, uint64_t object, uint64_t offset,
    uint64_t length)
{
 struct drr_free *drrf = &(dsp->dsa_drr->drr_u.drr_free);
 ASSERT(object > dsp->dsa_last_data_object ||
     (object == dsp->dsa_last_data_object &&
     offset > dsp->dsa_last_data_offset));

 if (length != -1ULL && offset + length < offset)
  length = -1ULL;
 if (dsp->dsa_pending_op != PENDING_NONE &&
     dsp->dsa_pending_op != PENDING_FREE) {
  if (dump_record(dsp, ((void*)0), 0) != 0)
   return (SET_ERROR(EINTR));
  dsp->dsa_pending_op = PENDING_NONE;
 }

 if (dsp->dsa_pending_op == PENDING_FREE) {






  ASSERT(length != -1ULL);




  if (drrf->drr_object == object && drrf->drr_offset +
      drrf->drr_length == offset) {
   drrf->drr_length += length;
   return (0);
  } else {

   if (dump_record(dsp, ((void*)0), 0) != 0)
    return (SET_ERROR(EINTR));
   dsp->dsa_pending_op = PENDING_NONE;
  }
 }

 bzero(dsp->dsa_drr, sizeof (dmu_replay_record_t));
 dsp->dsa_drr->drr_type = DRR_FREE;
 drrf->drr_object = object;
 drrf->drr_offset = offset;
 drrf->drr_length = length;
 drrf->drr_toguid = dsp->dsa_toguid;
 if (length == -1ULL) {
  if (dump_record(dsp, ((void*)0), 0) != 0)
   return (SET_ERROR(EINTR));
 } else {
  dsp->dsa_pending_op = PENDING_FREE;
 }

 return (0);
}
