
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ssize_t ;
typedef int off_t ;
struct TYPE_5__ {int d_npartitions; TYPE_1__* d_partitions; } ;
struct TYPE_4__ {int p_offset; scalar_t__ p_size; } ;


 int BBSIZE ;
 int MAXPARTITIONS ;
 int MIN (int ,int ) ;
 int O_RDONLY ;
 size_t RAW_PART ;
 int SEEK_SET ;
 scalar_t__ bootarea ;
 int bsd_disklabel_le_dec (scalar_t__,TYPE_2__*,int ) ;
 int close (int) ;
 int err (int,char*,...) ;
 int errx (int,char*,...) ;
 int g_mediasize (int) ;
 int g_sectorsize (int) ;
 int get_file_parms (int) ;
 scalar_t__ is_file ;
 TYPE_2__ lab ;
 scalar_t__ labeloffset ;
 int labelsoffset ;
 int lba_offset ;
 int lseek (int,int,int ) ;
 int mediasize ;
 int open (int ,int ) ;
 int read (int,scalar_t__,int) ;
 int secsize ;
 int specname ;

__attribute__((used)) static int
readlabel(int flag)
{
 ssize_t nbytes;
 uint32_t lba;
 int f, i;
 int error;

 f = open(specname, O_RDONLY);
 if (f < 0)
  err(1, "%s", specname);
 if (is_file)
  get_file_parms(f);
 else {
  mediasize = g_mediasize(f);
  secsize = g_sectorsize(f);
  if (secsize < 0 || mediasize < 0)
   err(4, "cannot get disk geometry");
 }
 if (mediasize > (off_t)0xffffffff * secsize)
  errx(1,
      "disks with more than 2^32-1 sectors are not supported");
 (void)lseek(f, (off_t)0, SEEK_SET);
 nbytes = read(f, bootarea, BBSIZE);
 if (nbytes == -1)
  err(4, "%s read", specname);
 if (nbytes != BBSIZE)
  errx(4, "couldn't read %d bytes from %s", BBSIZE, specname);
 close (f);
 error = bsd_disklabel_le_dec(
     bootarea + (labeloffset + labelsoffset * secsize),
     &lab, MAXPARTITIONS);
 if (flag && error)
  errx(1, "%s: no valid label found", specname);

 if (is_file)
  return(0);






 lba = ~0;
 for (i = 0; i < lab.d_npartitions; i++) {
  if (lab.d_partitions[i].p_size)
   lba = MIN(lba, lab.d_partitions[i].p_offset);
 }
 if (lba != 0 && lab.d_partitions[RAW_PART].p_offset == lba) {
  for (i = 0; i < lab.d_npartitions; i++) {
   if (lab.d_partitions[i].p_size)
    lab.d_partitions[i].p_offset -= lba;
  }




  lba_offset = lba;
 }
 return (error);
}
