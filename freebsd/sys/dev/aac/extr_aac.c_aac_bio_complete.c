
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio {scalar_t__ bio_cmd; int bio_flags; int bio_error; scalar_t__ bio_resid; } ;
struct aac_command {TYPE_1__* cm_fib; scalar_t__ cm_private; } ;
struct aac_blockwrite_response {scalar_t__ Status; } ;
struct aac_blockread_response {scalar_t__ Status; } ;
struct TYPE_2__ {int * data; } ;
typedef scalar_t__ AAC_FSAStatus ;


 int BIO_ERROR ;
 scalar_t__ BIO_READ ;
 int EIO ;
 scalar_t__ ST_OK ;
 int aac_biodone (struct bio*) ;
 int aac_release_command (struct aac_command*) ;

__attribute__((used)) static void
aac_bio_complete(struct aac_command *cm)
{
 struct aac_blockread_response *brr;
 struct aac_blockwrite_response *bwr;
 struct bio *bp;
 AAC_FSAStatus status;


 bp = (struct bio *)cm->cm_private;
 if (bp->bio_cmd == BIO_READ) {
  brr = (struct aac_blockread_response *)&cm->cm_fib->data[0];
  status = brr->Status;
 } else {
  bwr = (struct aac_blockwrite_response *)&cm->cm_fib->data[0];
  status = bwr->Status;
 }
 aac_release_command(cm);


 if (status == ST_OK) {
  bp->bio_resid = 0;
 } else {
  bp->bio_error = EIO;
  bp->bio_flags |= BIO_ERROR;
 }
 aac_biodone(bp);
}
