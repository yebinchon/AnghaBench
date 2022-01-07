
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bio_flags; int bio_bcount; int bio_resid; } ;


 int BIO_ERROR ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int biodone (struct bio*) ;
 int disk_err (struct bio*,char*,int,int) ;
 int fwprintf (int *,char*,char*) ;

void
aac_biodone(struct bio *bp)
{
 fwprintf(((void*)0), HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 if (bp->bio_flags & BIO_ERROR) {
  bp->bio_resid = bp->bio_bcount;
  disk_err(bp, "hard error", -1, 1);
 }

 biodone(bp);
}
