
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vdd {scalar_t__ vdd_type; int max_depth; } ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
struct isofile {TYPE_3__* cur_content; TYPE_3__ content; struct isofile* hardlink_target; } ;
struct TYPE_5__ {int cnt; } ;
struct isoent {struct isofile* file; TYPE_2__ children; struct isoent** children_sorted; } ;
struct TYPE_4__ {int rr; } ;
struct iso9660 {TYPE_1__ opt; } ;
struct archive_write {struct iso9660* format_data; } ;


 int DIR_REC_NORMAL ;
 int DIR_REC_PARENT ;
 int DIR_REC_SELF ;
 int LOGICAL_BLOCK_SIZE ;
 scalar_t__ VDD_JOLIET ;
 int WD_REMAINING ;
 int memset (unsigned char*,int ,int ) ;
 int set_directory_record (unsigned char*,int ,struct isoent*,struct iso9660*,int ,scalar_t__) ;
 unsigned char* wb_buffptr (struct archive_write*) ;
 int wb_consume (struct archive_write*,int ) ;

__attribute__((used)) static int
_write_directory_descriptors(struct archive_write *a, struct vdd *vdd,
    struct isoent *isoent, int depth)
{
 struct iso9660 *iso9660 = a->format_data;
 struct isoent **enttbl;
 unsigned char *p, *wb;
 int i, r;
 int dr_l;

 p = wb = wb_buffptr(a);

 p += set_directory_record(p, (LOGICAL_BLOCK_SIZE - (p - wb)), isoent,
     iso9660, DIR_REC_SELF, vdd->vdd_type);
 p += set_directory_record(p, (LOGICAL_BLOCK_SIZE - (p - wb)), isoent,
     iso9660, DIR_REC_PARENT, vdd->vdd_type);

 if (isoent->children.cnt <= 0 || (vdd->vdd_type != VDD_JOLIET &&
     !iso9660->opt.rr && depth + 1 >= vdd->max_depth)) {
  memset(p, 0, (LOGICAL_BLOCK_SIZE - (p - wb)));
  return (wb_consume(a, LOGICAL_BLOCK_SIZE));
 }

 enttbl = isoent->children_sorted;
 for (i = 0; i < isoent->children.cnt; i++) {
  struct isoent *np = enttbl[i];
  struct isofile *file = np->file;

  if (file->hardlink_target != ((void*)0))
   file = file->hardlink_target;
  file->cur_content = &(file->content);
  do {
   dr_l = set_directory_record(p, (LOGICAL_BLOCK_SIZE - (p - wb)),
       np, iso9660, DIR_REC_NORMAL,
       vdd->vdd_type);
   if (dr_l == 0) {
    memset(p, 0, (LOGICAL_BLOCK_SIZE - (p - wb)));
    r = wb_consume(a, LOGICAL_BLOCK_SIZE);
    if (r < 0)
     return (r);
    p = wb = wb_buffptr(a);
    dr_l = set_directory_record(p,
        (LOGICAL_BLOCK_SIZE - (p - wb)), np, iso9660,
        DIR_REC_NORMAL, vdd->vdd_type);
   }
   p += dr_l;
   file->cur_content = file->cur_content->next;
  } while (file->cur_content != ((void*)0));
 }
 memset(p, 0, (LOGICAL_BLOCK_SIZE - (p - wb)));
 return (wb_consume(a, LOGICAL_BLOCK_SIZE));
}
