
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct dos_partition {scalar_t__ dp_typ; int dp_flag; int dp_start; } ;
struct disklabel {TYPE_1__* d_partitions; int d_npartitions; int d_type; int d_magic2; int d_magic; } ;
struct TYPE_6__ {char* secbuf; } ;
struct TYPE_5__ {scalar_t__ start; scalar_t__ slice; size_t part; int init; int type; } ;
struct TYPE_4__ {int p_offset; int p_size; } ;


 scalar_t__ BASE_SLICE ;
 scalar_t__ COMPATIBILITY_SLICE ;
 scalar_t__ DISKMAGIC ;
 int DOSBBSECTOR ;
 int DOSPARTOFF ;
 scalar_t__ DOSPTYP_386BSD ;
 scalar_t__ DTYPE_SCSI ;
 int LABELOFFSET ;
 scalar_t__ LABELSECTOR ;
 unsigned int NDOSPART ;
 size_t RAW_PART ;
 int TYPE_DA ;
 scalar_t__ WHOLE_DISK_SLICE ;
 TYPE_3__* dmadat ;
 int drvread (void*,unsigned int,unsigned int) ;
 TYPE_2__ dsk ;
 int dsk_meta ;
 scalar_t__ le16toh (int ) ;
 scalar_t__ le32toh (int ) ;
 int printf (char*,char*) ;

__attribute__((used)) static int
dskread(void *buf, unsigned lba, unsigned nblk)
{
    return drvread(buf, lba, nblk);

}
