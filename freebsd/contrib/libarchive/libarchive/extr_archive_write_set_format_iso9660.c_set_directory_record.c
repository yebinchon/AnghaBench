
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct isofile {int entry; TYPE_1__* cur_content; struct isofile* hardlink_target; } ;
struct TYPE_6__ {size_t vd; size_t self; size_t parent; size_t normal; } ;
struct isoent {size_t id_len; int dir_location; int dir_block; TYPE_3__ dr_len; int * identifier; struct isofile* file; scalar_t__ dir; struct isoent* parent; } ;
struct TYPE_5__ {scalar_t__ rr; } ;
struct iso9660 {TYPE_2__ opt; int volume_sequence_number; } ;
typedef enum vdd_type { ____Placeholder_vdd_type } vdd_type ;
typedef enum dir_rec_type { ____Placeholder_dir_rec_type } dir_rec_type ;
struct TYPE_4__ {int location; scalar_t__ size; int * next; } ;






 unsigned char FILE_FLAG_DIRECTORY ;
 unsigned char FILE_FLAG_MULTI_EXTENT ;
 int LOGICAL_BLOCK_SIZE ;
 int VDD_JOLIET ;
 int archive_entry_mtime (int ) ;
 int memcpy (unsigned char*,int *,size_t) ;
 size_t set_directory_record_rr (unsigned char*,int,struct isoent*,struct iso9660*,int) ;
 int set_num_711 (unsigned char*,unsigned char) ;
 int set_num_723 (unsigned char*,int ) ;
 int set_num_733 (unsigned char*,int) ;
 int set_time_915 (unsigned char*,int ) ;

__attribute__((used)) static int
set_directory_record(unsigned char *p, size_t n, struct isoent *isoent,
    struct iso9660 *iso9660, enum dir_rec_type t,
    enum vdd_type vdd_type)
{
 unsigned char *bp;
 size_t dr_len;
 size_t fi_len;

 if (p != ((void*)0)) {





  switch (t) {
  case 128:
   dr_len = isoent->dr_len.vd; break;
  case 129:
   dr_len = isoent->dr_len.self; break;
  case 130:
   dr_len = isoent->dr_len.parent; break;
  case 131:
  default:
   dr_len = isoent->dr_len.normal; break;
  }
  if (dr_len > n)
   return (0);
 }

 if (t == 131 && isoent->identifier != ((void*)0))
  fi_len = isoent->id_len;
 else
  fi_len = 1;

 if (p != ((void*)0)) {
  struct isoent *xisoent;
  struct isofile *file;
  unsigned char flag;

  if (t == 130)
   xisoent = isoent->parent;
  else
   xisoent = isoent;
  file = isoent->file;
  if (file->hardlink_target != ((void*)0))
   file = file->hardlink_target;

  if (xisoent->dir)
   flag = FILE_FLAG_DIRECTORY;
  else {
   if (file->cur_content->next != ((void*)0))
    flag = FILE_FLAG_MULTI_EXTENT;
   else
    flag = 0;
  }

  bp = p -1;

  set_num_711(bp+2, 0);

  if (xisoent->dir)
   set_num_733(bp+3, xisoent->dir_location);
  else
   set_num_733(bp+3, file->cur_content->location);

  if (xisoent->dir)
   set_num_733(bp+11,
       xisoent->dir_block * LOGICAL_BLOCK_SIZE);
  else
   set_num_733(bp+11, (uint32_t)file->cur_content->size);







  set_time_915(bp+19,
      archive_entry_mtime(xisoent->file->entry));

  bp[26] = flag;

  set_num_711(bp+27, 0);

  set_num_711(bp+28, 0);

  set_num_723(bp+29, iso9660->volume_sequence_number);

  set_num_711(bp+33, (unsigned char)fi_len);

  switch (t) {
  case 128:
  case 129:
   set_num_711(bp+34, 0);
   break;
  case 130:
   set_num_711(bp+34, 1);
   break;
  case 131:
   if (isoent->identifier != ((void*)0))
    memcpy(bp+34, isoent->identifier, fi_len);
   else
    set_num_711(bp+34, 0);
   break;
  }
 } else
  bp = ((void*)0);
 dr_len = 33 + fi_len;

 if (dr_len & 0x01) {
  dr_len ++;
  if (p != ((void*)0))
   bp[dr_len] = 0;
 }


 if (t == 128) {
  if (p != ((void*)0))

   set_num_711(p, (unsigned char)dr_len);
  else
   isoent->dr_len.vd = (int)dr_len;
  return ((int)dr_len);
 }


 if (iso9660->opt.rr && vdd_type != VDD_JOLIET)
  dr_len = set_directory_record_rr(bp, (int)dr_len,
      isoent, iso9660, t);

 if (p != ((void*)0))

  set_num_711(p, (unsigned char)dr_len);
 else {




  switch (t) {
  case 128:



   break;
  case 129:
   isoent->dr_len.self = (int)dr_len; break;
  case 130:
   isoent->dr_len.parent = (int)dr_len; break;
  case 131:
   isoent->dr_len.normal = (int)dr_len; break;
  }
 }

 return ((int)dr_len);
}
