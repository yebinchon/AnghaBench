
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint64_t ;
struct drr_write_embedded {int drr_length; int drr_psize; int drr_lsize; int drr_etype; int drr_compression; int drr_toguid; void* drr_offset; void* drr_object; } ;
struct TYPE_7__ {scalar_t__ dsa_pending_op; int dsa_toguid; TYPE_5__* dsa_drr; } ;
typedef TYPE_2__ dmu_sendarg_t ;
typedef int dmu_replay_record_t ;
typedef int blkptr_t ;
struct TYPE_6__ {struct drr_write_embedded drr_write_embedded; } ;
struct TYPE_8__ {int drr_type; TYPE_1__ drr_u; } ;


 int ASSERT (int ) ;
 int BPE_GET_ETYPE (int const*) ;
 int BPE_GET_LSIZE (int const*) ;
 int BPE_GET_PSIZE (int const*) ;
 int BPE_PAYLOAD_SIZE ;
 int BP_GET_COMPRESS (int const*) ;
 int BP_IS_EMBEDDED (int const*) ;
 int DRR_WRITE_EMBEDDED ;
 int EINTR ;
 int P2ROUNDUP (int ,int) ;
 scalar_t__ PENDING_NONE ;
 int bzero (TYPE_5__*,int) ;
 int decode_embedded_bp_compressed (int const*,char*) ;
 scalar_t__ dump_record (TYPE_2__*,char*,int ) ;

__attribute__((used)) static int
dump_write_embedded(dmu_sendarg_t *dsp, uint64_t object, uint64_t offset,
    int blksz, const blkptr_t *bp)
{
 char buf[BPE_PAYLOAD_SIZE];
 struct drr_write_embedded *drrw =
     &(dsp->dsa_drr->drr_u.drr_write_embedded);

 if (dsp->dsa_pending_op != PENDING_NONE) {
  if (dump_record(dsp, ((void*)0), 0) != 0)
   return (EINTR);
  dsp->dsa_pending_op = PENDING_NONE;
 }

 ASSERT(BP_IS_EMBEDDED(bp));

 bzero(dsp->dsa_drr, sizeof (dmu_replay_record_t));
 dsp->dsa_drr->drr_type = DRR_WRITE_EMBEDDED;
 drrw->drr_object = object;
 drrw->drr_offset = offset;
 drrw->drr_length = blksz;
 drrw->drr_toguid = dsp->dsa_toguid;
 drrw->drr_compression = BP_GET_COMPRESS(bp);
 drrw->drr_etype = BPE_GET_ETYPE(bp);
 drrw->drr_lsize = BPE_GET_LSIZE(bp);
 drrw->drr_psize = BPE_GET_PSIZE(bp);

 decode_embedded_bp_compressed(bp, buf);

 if (dump_record(dsp, buf, P2ROUNDUP(drrw->drr_psize, 8)) != 0)
  return (EINTR);
 return (0);
}
