
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_18__ {char header_size; unsigned char log2_bs; int uncompressed_size; } ;
struct TYPE_16__ {char* s; } ;
struct TYPE_11__ {char* s; size_t length; } ;
struct isofile {TYPE_9__ zisofs; int entry; TYPE_7__ symlink; TYPE_6__* cur_content; TYPE_5__* hardlink_target; TYPE_2__ basename; } ;
struct isoent {int dir_location; struct isoent* parent; TYPE_8__* rr_child; scalar_t__ dir; struct isofile* file; scalar_t__ virtual; struct isoent* rr_parent; } ;
struct TYPE_12__ {scalar_t__ rr; } ;
struct TYPE_10__ {struct isoent* rootent; } ;
struct iso9660 {int location_rrip_er; TYPE_3__ opt; TYPE_1__ primary; } ;
struct ctl_extr_rec {int dr_len; } ;
typedef int mode_t ;
typedef scalar_t__ int64_t ;
typedef enum dir_rec_type { ____Placeholder_dir_rec_type } dir_rec_type ;
struct TYPE_17__ {int dir_location; } ;
struct TYPE_15__ {int location; } ;
struct TYPE_14__ {TYPE_4__* cur_content; } ;
struct TYPE_13__ {int location; } ;


 scalar_t__ AE_IFBLK ;
 scalar_t__ AE_IFCHR ;
 scalar_t__ AE_IFLNK ;
 int DIR_REC_NORMAL ;
 int DIR_REC_PARENT ;
 int DIR_REC_SELF ;
 scalar_t__ OPT_RR_USEFUL ;
 int RRIP_ER_SIZE ;
 int RR_CE_SIZE ;
 unsigned char RR_USE_CL ;
 unsigned char RR_USE_NM ;
 unsigned char RR_USE_PL ;
 unsigned char RR_USE_PN ;
 unsigned char RR_USE_PX ;
 unsigned char RR_USE_RE ;
 unsigned char RR_USE_SL ;
 unsigned char RR_USE_TF ;
 unsigned char TF_ACCESS ;
 unsigned char TF_ATTRIBUTES ;
 unsigned char TF_CREATION ;
 unsigned char TF_MODIFY ;
 scalar_t__ archive_entry_atime (int ) ;
 scalar_t__ archive_entry_atime_is_set (int ) ;
 scalar_t__ archive_entry_birthtime (int ) ;
 scalar_t__ archive_entry_birthtime_is_set (int ) ;
 scalar_t__ archive_entry_ctime (int ) ;
 scalar_t__ archive_entry_ctime_is_set (int ) ;
 scalar_t__ archive_entry_filetype (int ) ;
 scalar_t__ archive_entry_gid (int ) ;
 int archive_entry_mode (int ) ;
 scalar_t__ archive_entry_mtime (int ) ;
 scalar_t__ archive_entry_mtime_is_set (int ) ;
 int archive_entry_nlink (int ) ;
 scalar_t__ archive_entry_rdev (int ) ;
 scalar_t__ archive_entry_uid (int ) ;
 int extra_close_record (struct ctl_extr_rec*,int ) ;
 unsigned char* extra_next_record (struct ctl_extr_rec*,int) ;
 unsigned char* extra_open_record (unsigned char*,int,struct isoent*,struct ctl_extr_rec*) ;
 int extra_space (struct ctl_extr_rec*) ;
 int extra_tell_used_size (struct ctl_extr_rec*,int) ;
 int memcpy (unsigned char*,char const*,size_t) ;
 int set_SUSP_CE (unsigned char*,int ,int ,int ) ;
 int set_num_733 (unsigned char*,int) ;
 int set_time_915 (unsigned char*,scalar_t__) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
set_directory_record_rr(unsigned char *bp, int dr_len,
    struct isoent *isoent, struct iso9660 *iso9660, enum dir_rec_type t)
{

 unsigned char rr_flag;
 int length;
 struct ctl_extr_rec ctl;
 struct isoent *rr_parent, *pxent;
 struct isofile *file;

 bp = extra_open_record(bp, dr_len, isoent, &ctl);

 if (t == DIR_REC_PARENT) {
  rr_parent = isoent->rr_parent;
  pxent = isoent->parent;
  if (rr_parent != ((void*)0))
   isoent = rr_parent;
  else
   isoent = isoent->parent;
 } else {
  rr_parent = ((void*)0);
  pxent = isoent;
 }
 file = isoent->file;

 if (t != DIR_REC_NORMAL) {
  rr_flag = 0x01 | 0x80;
  if (rr_parent != ((void*)0))
   rr_flag |= 0x20;
 } else {
  rr_flag = 0x01 | 0x08 | 0x80;
  if (archive_entry_filetype(file->entry) == AE_IFLNK)
   rr_flag |= 0x04;
  if (isoent->rr_parent != ((void*)0))
   rr_flag |= 0x40;
  if (isoent->rr_child != ((void*)0))
   rr_flag |= 0x10;
  if (archive_entry_filetype(file->entry) == AE_IFCHR ||
      archive_entry_filetype(file->entry) == AE_IFBLK)
   rr_flag |= 0x02;
 }


 if (t == DIR_REC_SELF && isoent == isoent->parent) {
  length = 7;
  if (bp != ((void*)0)) {
   bp[1] = 'S';
   bp[2] = 'P';
   bp[3] = length;
   bp[4] = 1;
   bp[5] = 0xBE;
   bp[6] = 0xEF;
   bp[7] = 0;
   bp += length;
  }
  extra_tell_used_size(&ctl, length);
 }


 length = 5;
 if (extra_space(&ctl) < length)
  bp = extra_next_record(&ctl, length);
 if (bp != ((void*)0)) {
  bp[1] = 'R';
  bp[2] = 'R';
  bp[3] = length;
  bp[4] = 1;
  bp[5] = rr_flag;
  bp += length;
 }
 extra_tell_used_size(&ctl, length);


 if (rr_flag & 0x08) {
  size_t nmlen = file->basename.length;
  const char *nm = file->basename.s;
  size_t nmmax;

  if (extra_space(&ctl) < 6)
   bp = extra_next_record(&ctl, 6);
  if (bp != ((void*)0)) {
   bp[1] = 'N';
   bp[2] = 'M';
   bp[4] = 1;
  }
  nmmax = extra_space(&ctl);
  if (nmmax > 0xff)
   nmmax = 0xff;
  while (nmlen + 5 > nmmax) {
   length = (int)nmmax;
   if (bp != ((void*)0)) {
    bp[3] = length;
    bp[5] = 0x01;

    memcpy(bp+6, nm, length - 5);
    bp += length;
   }
   nmlen -= length - 5;
   nm += length - 5;
   extra_tell_used_size(&ctl, length);
   if (extra_space(&ctl) < 6) {
    bp = extra_next_record(&ctl, 6);
    nmmax = extra_space(&ctl);
    if (nmmax > 0xff)
     nmmax = 0xff;
   }
   if (bp != ((void*)0)) {
    bp[1] = 'N';
    bp[2] = 'M';
    bp[4] = 1;
   }
  }
  length = 5 + (int)nmlen;
  if (bp != ((void*)0)) {
   bp[3] = length;
   bp[5] = 0;
   memcpy(bp+6, nm, nmlen);
   bp += length;
  }
  extra_tell_used_size(&ctl, length);
 }


 if (rr_flag & 0x01) {
  length = 44;
  if (extra_space(&ctl) < length)
   bp = extra_next_record(&ctl, length);
  if (bp != ((void*)0)) {
   mode_t mode;
   int64_t uid;
   int64_t gid;

   mode = archive_entry_mode(file->entry);
   uid = archive_entry_uid(file->entry);
   gid = archive_entry_gid(file->entry);
   if (iso9660->opt.rr == OPT_RR_USEFUL) {






    mode |= 0444;

    if (mode & 0111)


     mode |= 0111;

    mode &= ~0222;

    mode &= ~07000;
   }

   bp[1] = 'P';
   bp[2] = 'X';
   bp[3] = length;
   bp[4] = 1;

   set_num_733(bp+5, mode);

   set_num_733(bp+13,
       archive_entry_nlink(file->entry));
   set_num_733(bp+21, (uint32_t)uid);
   set_num_733(bp+29, (uint32_t)gid);

   if (pxent->dir)
    set_num_733(bp+37, pxent->dir_location);
   else if (file->hardlink_target != ((void*)0))
    set_num_733(bp+37,
        file->hardlink_target->cur_content->location);
   else
    set_num_733(bp+37,
        file->cur_content->location);
   bp += length;
  }
  extra_tell_used_size(&ctl, length);
 }


 if (rr_flag & 0x04) {
  const char *sl;
  char sl_last;

  if (extra_space(&ctl) < 7)
   bp = extra_next_record(&ctl, 7);
  sl = file->symlink.s;
  sl_last = '\0';
  if (bp != ((void*)0)) {
   bp[1] = 'S';
   bp[2] = 'L';
   bp[4] = 1;
  }
  for (;;) {
   unsigned char *nc, *cf, *cl, cldmy = 0;
   int sllen, slmax;

   slmax = extra_space(&ctl);
   if (slmax > 0xff)
    slmax = 0xff;
   if (bp != ((void*)0))
    nc = &bp[6];
   else
    nc = ((void*)0);
   cf = cl = ((void*)0);
   sllen = 0;
   while (*sl && sllen + 11 < slmax) {
    if (sl_last == '\0' && sl[0] == '/') {
     if (nc != ((void*)0)) {
      cf = nc++;
      *cf = 0x08;
      *nc++ = 0;
     }
     sllen += 2;
     sl++;
     sl_last = '/';
     cl = ((void*)0);
     continue;
    }
    if (((sl_last == '\0' || sl_last == '/') &&
          sl[0] == '.' && sl[1] == '.' &&
         (sl[2] == '/' || sl[2] == '\0')) ||
        (sl[0] == '/' &&
          sl[1] == '.' && sl[2] == '.' &&
         (sl[3] == '/' || sl[3] == '\0'))) {






     if (nc != ((void*)0)) {
      cf = nc++;
      *cf = 0x04;
      *nc++ = 0;
     }
     sllen += 2;
     if (sl[0] == '/')
      sl += 3;
     else
      sl += 2;
     sl_last = '.';
     cl = ((void*)0);
     continue;
    }
    if (((sl_last == '\0' || sl_last == '/') &&
          sl[0] == '.' &&
         (sl[1] == '/' || sl[1] == '\0')) ||
        (sl[0] == '/' && sl[1] == '.' &&
         (sl[2] == '/' || sl[2] == '\0'))) {






     if (nc != ((void*)0)) {
      cf = nc++;
      *cf = 0x02;
      *nc++ = 0;
     }
     sllen += 2;
     if (sl[0] == '/')
      sl += 2;
     else
      sl ++;
     sl_last = '.';
     cl = ((void*)0);
     continue;
    }
    if (sl[0] == '/' || cl == ((void*)0)) {
     if (nc != ((void*)0)) {
      cf = nc++;
      *cf = 0;
      cl = nc++;
      *cl = 0;
     } else
      cl = &cldmy;
     sllen += 2;
     if (sl[0] == '/') {
      sl_last = *sl++;
      continue;
     }
    }
    sl_last = *sl++;
    if (nc != ((void*)0)) {
     *nc++ = sl_last;
     (*cl) ++;
    }
    sllen++;
   }
   if (*sl) {
    length = 5 + sllen;
    if (bp != ((void*)0)) {



     *cf |= 0x01;
     bp[3] = length;
     bp[5] = 0x01;


     bp += length;
    }
    extra_tell_used_size(&ctl, length);
    if (extra_space(&ctl) < 11)
     bp = extra_next_record(&ctl, 11);
    if (bp != ((void*)0)) {

     bp[1] = 'S';
     bp[2] = 'L';
     bp[4] = 1;
    }
   } else {
    length = 5 + sllen;
    if (bp != ((void*)0)) {
     bp[3] = length;
     bp[5] = 0;
     bp += length;
    }
    extra_tell_used_size(&ctl, length);
    break;
   }
  }
 }


 if (rr_flag & 0x80) {
  unsigned char tf_flags;

  length = 5;
  tf_flags = 0;

  if (archive_entry_birthtime_is_set(file->entry) &&
      archive_entry_birthtime(file->entry) <=
      archive_entry_mtime(file->entry)) {
   length += 7;
   tf_flags |= 0x01;
  }

  if (archive_entry_mtime_is_set(file->entry)) {
   length += 7;
   tf_flags |= 0x02;
  }
  if (archive_entry_atime_is_set(file->entry)) {
   length += 7;
   tf_flags |= 0x04;
  }
  if (archive_entry_ctime_is_set(file->entry)) {
   length += 7;
   tf_flags |= 0x08;
  }
  if (extra_space(&ctl) < length)
   bp = extra_next_record(&ctl, length);
  if (bp != ((void*)0)) {
   bp[1] = 'T';
   bp[2] = 'F';
   bp[3] = length;
   bp[4] = 1;
   bp[5] = tf_flags;
   bp += 5;

   if (tf_flags & 0x01) {
    set_time_915(bp+1,
        archive_entry_birthtime(file->entry));
    bp += 7;
   }

   if (tf_flags & 0x02) {
    set_time_915(bp+1,
        archive_entry_mtime(file->entry));
    bp += 7;
   }

   if (tf_flags & 0x04) {
    set_time_915(bp+1,
        archive_entry_atime(file->entry));
    bp += 7;
   }

   if (tf_flags & 0x08) {
    set_time_915(bp+1,
        archive_entry_ctime(file->entry));
    bp += 7;
   }
  }
  extra_tell_used_size(&ctl, length);
 }


 if (rr_flag & 0x40) {
  length = 4;
  if (extra_space(&ctl) < length)
   bp = extra_next_record(&ctl, length);
  if (bp != ((void*)0)) {
   bp[1] = 'R';
   bp[2] = 'E';
   bp[3] = length;
   bp[4] = 1;
   bp += length;
  }
  extra_tell_used_size(&ctl, length);
 }


 if (rr_flag & 0x20) {
  length = 12;
  if (extra_space(&ctl) < length)
   bp = extra_next_record(&ctl, length);
  if (bp != ((void*)0)) {
   bp[1] = 'P';
   bp[2] = 'L';
   bp[3] = length;
   bp[4] = 1;
   set_num_733(bp + 5,
       rr_parent->dir_location);
   bp += length;
  }
  extra_tell_used_size(&ctl, length);
 }


 if (rr_flag & 0x10) {
  length = 12;
  if (extra_space(&ctl) < length)
   bp = extra_next_record(&ctl, length);
  if (bp != ((void*)0)) {
   bp[1] = 'C';
   bp[2] = 'L';
   bp[3] = length;
   bp[4] = 1;
   set_num_733(bp + 5,
       isoent->rr_child->dir_location);
   bp += length;
  }
  extra_tell_used_size(&ctl, length);
 }


 if (rr_flag & 0x02) {
  length = 20;
  if (extra_space(&ctl) < length)
   bp = extra_next_record(&ctl, length);
  if (bp != ((void*)0)) {
   uint64_t dev;

   bp[1] = 'P';
   bp[2] = 'N';
   bp[3] = length;
   bp[4] = 1;
   dev = (uint64_t)archive_entry_rdev(file->entry);
   set_num_733(bp + 5, (uint32_t)(dev >> 32));
   set_num_733(bp + 13, (uint32_t)(dev & 0xFFFFFFFF));
   bp += length;
  }
  extra_tell_used_size(&ctl, length);
 }


 if (file->zisofs.header_size) {
  length = 16;
  if (extra_space(&ctl) < length)
   bp = extra_next_record(&ctl, length);
  if (bp != ((void*)0)) {
   bp[1] = 'Z';
   bp[2] = 'F';
   bp[3] = length;
   bp[4] = 1;
   bp[5] = 'p';
   bp[6] = 'z';
   bp[7] = file->zisofs.header_size;
   bp[8] = file->zisofs.log2_bs;
   set_num_733(bp + 9, file->zisofs.uncompressed_size);
   bp += length;
  }
  extra_tell_used_size(&ctl, length);
 }


 if (t == DIR_REC_SELF && isoent == isoent->parent) {
  length = RR_CE_SIZE;
  if (bp != ((void*)0))
   set_SUSP_CE(bp+1, iso9660->location_rrip_er,
       0, RRIP_ER_SIZE);
  extra_tell_used_size(&ctl, length);
 }

 extra_close_record(&ctl, 0);

 return (ctl.dr_len);
}
