
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uuid_t ;
struct TYPE_3__ {scalar_t__ start; scalar_t__ size; unsigned int slice; int part; int unit; } ;
struct zfsdsk {int * gdev; TYPE_1__ dsk; } ;
struct gpt_hdr {int hdr_lba_self; int hdr_revision; int hdr_entsz; scalar_t__ hdr_lba_table; unsigned int hdr_entries; int * hdr_sig; } ;
struct gpt_ent {scalar_t__ ent_lba_start; scalar_t__ ent_lba_end; int ent_type; } ;
struct dos_partition {scalar_t__ dp_start; scalar_t__ dp_size; int dp_typ; } ;
typedef int hdr ;
typedef scalar_t__ daddr_t ;
struct TYPE_4__ {char* secbuf; } ;


 unsigned int DEV_BSIZE ;
 scalar_t__ DOSBBSECTOR ;
 int DOSPARTOFF ;
 int * GPT_HDR_SIG ;
 unsigned int NDOSPART ;
 struct zfsdsk* copy_dsk (struct zfsdsk*) ;
 TYPE_2__* dmadat ;
 scalar_t__ drvread (TYPE_1__*,char*,scalar_t__,int) ;
 scalar_t__ drvsize_ext (struct zfsdsk*) ;
 int freebsd_zfs_uuid ;
 scalar_t__ geli_havekey (int *) ;
 scalar_t__ geli_passphrase (int *,int ) ;
 void* geli_taste (int ,struct zfsdsk*,scalar_t__,char*,...) ;
 int gelipw ;
 scalar_t__ memcmp (int *,int *,int) ;
 int memcpy (struct gpt_hdr*,char*,int) ;
 scalar_t__ vdev_probe (int ,struct zfsdsk*,int *) ;
 int vdev_read ;
 int vdev_read2 ;

__attribute__((used)) static void
probe_drive(struct zfsdsk *zdsk)
{
    struct dos_partition *dp;
    char *sec;
    unsigned i;
    sec = dmadat->secbuf;
    zdsk->dsk.start = 0;
    if (drvread(&zdsk->dsk, sec, DOSBBSECTOR, 1))
 return;
    dp = (void *)(sec + DOSPARTOFF);

    for (i = 0; i < NDOSPART; i++) {
 if (!dp[i].dp_typ)
     continue;
 zdsk->dsk.start = dp[i].dp_start;
 zdsk->dsk.size = dp[i].dp_size;
 zdsk->dsk.slice = i + 1;
 if (vdev_probe(vdev_read2, zdsk, ((void*)0)) == 0) {
     zdsk = copy_dsk(zdsk);
 }
    }
}
