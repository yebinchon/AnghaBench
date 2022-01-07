
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct ccb_nvmeio {int dummy; } ;
union ccb {TYPE_2__ ccb_h; struct bio* ccb_bp; int ccb_state; struct ccb_nvmeio nvmeio; struct nda_trim_request* ccb_trim; } ;
typedef int uint32_t ;
struct nvme_dsm_range {int length; int starting_lba; } ;
struct nda_trim_request {struct nvme_dsm_range* dsm; int bps; } ;
struct nda_softc {int state; int refcount; int outstanding_cmds; int trim_lbas; int trim_ranges; int trim_count; int cam_iosched; TYPE_1__* disk; int force_write_error; int periodic_read_count; int periodic_read_error; int force_read_error; int flags; } ;
struct cam_periph {int path; scalar_t__ softc; } ;
struct bio {int const bio_cmd; int bio_flags; int bio_bcount; int bio_ma_offset; int bio_ma_n; int bio_offset; } ;
struct TYPE_3__ {int d_sectorsize; } ;





 int BIO_UNMAPPED ;

 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int CAM_UNLOCKED ;
 int EIO ;
 int ENOMEM ;
 int KASSERT (int,char*) ;
 int M_NOWAIT ;
 int M_NVMEDA ;
 int M_ZERO ;
 int NDA_CCB_BUFFER_IO ;
 int NDA_CCB_TRIM ;
 int NDA_FLAG_DIRTY ;

 int NVME_OPC_READ ;
 int NVME_OPC_WRITE ;
 int PAGE_SIZE ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct bio*,int ) ;
 int bio_queue ;
 int biofinish (struct bio*,int *,int ) ;
 struct bio* cam_iosched_next_bio (int ) ;
 struct bio* cam_iosched_next_trim (int ) ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;
 int htole32 (int) ;
 int htole64 (int) ;
 struct nda_trim_request* malloc (int,int ,int) ;
 int min (int ,int ) ;
 int nda_max_trim_entries ;
 int nda_nvme_flush (struct nda_softc*,struct ccb_nvmeio*) ;
 int nda_nvme_rw_bio (struct nda_softc*,struct ccb_nvmeio*,struct bio*,int ) ;
 int nda_nvme_trim (struct nda_softc*,struct ccb_nvmeio*,struct nvme_dsm_range*,struct nvme_dsm_range*) ;
 int ndaschedule (struct cam_periph*) ;
 int nitems (struct nvme_dsm_range*) ;
 int round_page (int) ;
 int xpt_action (union ccb*) ;
 int xpt_release_ccb (union ccb*) ;

__attribute__((used)) static void
ndastart(struct cam_periph *periph, union ccb *start_ccb)
{
 struct nda_softc *softc = (struct nda_softc *)periph->softc;
 struct ccb_nvmeio *nvmeio = &start_ccb->nvmeio;

 CAM_DEBUG(periph->path, CAM_DEBUG_TRACE, ("ndastart\n"));

 switch (softc->state) {
 case 128:
 {
  struct bio *bp;

  bp = cam_iosched_next_bio(softc->cam_iosched);
  CAM_DEBUG(periph->path, CAM_DEBUG_TRACE, ("ndastart: bio %p\n", bp));
  if (bp == ((void*)0)) {
   xpt_release_ccb(start_ccb);
   break;
  }

  switch (bp->bio_cmd) {
  case 129:
   softc->flags |= NDA_FLAG_DIRTY;

  case 130:
  {
   KASSERT((bp->bio_flags & BIO_UNMAPPED) == 0 ||
       round_page(bp->bio_bcount + bp->bio_ma_offset) /
       PAGE_SIZE == bp->bio_ma_n,
       ("Short bio %p", bp));
   nda_nvme_rw_bio(softc, &start_ccb->nvmeio, bp, bp->bio_cmd == 130 ?
       NVME_OPC_READ : NVME_OPC_WRITE);
   break;
  }
  case 132:
  {
   struct nvme_dsm_range *dsm_range, *dsm_end;
   struct nda_trim_request *trim;
   struct bio *bp1;
   int ents;
   uint32_t totalcount = 0, ranges = 0;

   trim = malloc(sizeof(*trim), M_NVMEDA, M_ZERO | M_NOWAIT);
   if (trim == ((void*)0)) {
    biofinish(bp, ((void*)0), ENOMEM);
    xpt_release_ccb(start_ccb);
    ndaschedule(periph);
    return;
   }
   TAILQ_INIT(&trim->bps);
   bp1 = bp;
   ents = min(nitems(trim->dsm), nda_max_trim_entries);
   dsm_range = trim->dsm;
   dsm_end = dsm_range + ents;
   do {
    TAILQ_INSERT_TAIL(&trim->bps, bp1, bio_queue);
    dsm_range->length =
        htole32(bp1->bio_bcount / softc->disk->d_sectorsize);
    dsm_range->starting_lba =
        htole64(bp1->bio_offset / softc->disk->d_sectorsize);
    ranges++;
    totalcount += dsm_range->length;
    dsm_range++;
    if (dsm_range >= dsm_end)
     break;
    bp1 = cam_iosched_next_trim(softc->cam_iosched);


   } while (bp1 != ((void*)0));
   start_ccb->ccb_trim = trim;
   nda_nvme_trim(softc, &start_ccb->nvmeio, trim->dsm,
       dsm_range - trim->dsm);
   start_ccb->ccb_state = NDA_CCB_TRIM;
   softc->trim_count++;
   softc->trim_ranges += ranges;
   softc->trim_lbas += totalcount;






   goto out;
  }
  case 131:
   nda_nvme_flush(softc, nvmeio);
   break;
  }
  start_ccb->ccb_state = NDA_CCB_BUFFER_IO;
  start_ccb->ccb_bp = bp;
out:
  start_ccb->ccb_h.flags |= CAM_UNLOCKED;
  softc->outstanding_cmds++;
  softc->refcount++;
  cam_periph_unlock(periph);
  xpt_action(start_ccb);
  cam_periph_lock(periph);
  softc->refcount--;


  ndaschedule(periph);
  break;
  }
 }
}
