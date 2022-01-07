
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vdd {scalar_t__ vdd_type; int max_depth; struct isoent* rootent; } ;
struct TYPE_8__ {struct isoent* first; } ;
struct TYPE_7__ {scalar_t__ cnt; int * first; } ;
struct isoent {struct isoent* drnext; struct isoent* parent; TYPE_4__ subdirs; TYPE_3__ children; TYPE_1__* file; scalar_t__ virtual; } ;
struct TYPE_6__ {int rr; } ;
struct iso9660 {struct isoent* directories_too_deep; TYPE_2__ opt; int birth_time; } ;
struct idr {int dummy; } ;
struct archive_write {struct iso9660* format_data; } ;
struct TYPE_5__ {int entry; } ;


 int ARCHIVE_OK ;
 scalar_t__ VDD_JOLIET ;
 int archive_entry_mtime_is_set (int ) ;
 int archive_entry_set_atime (int ,int ,int ) ;
 int archive_entry_set_ctime (int ,int ,int ) ;
 int archive_entry_set_mtime (int ,int ,int ) ;
 int idr_cleanup (struct idr*) ;
 int idr_init (struct iso9660*,struct vdd*,struct idr*) ;
 int isoent_gen_iso9660_identifier (struct archive_write*,struct isoent*,struct idr*) ;
 int isoent_gen_joliet_identifier (struct archive_write*,struct isoent*,struct idr*) ;
 int isoent_make_sorted_files (struct archive_write*,struct isoent*,struct idr*) ;

__attribute__((used)) static int
isoent_traverse_tree(struct archive_write *a, struct vdd* vdd)
{
 struct iso9660 *iso9660 = a->format_data;
 struct isoent *np;
 struct idr idr;
 int depth;
 int r;
 int (*genid)(struct archive_write *, struct isoent *, struct idr *);

 idr_init(iso9660, vdd, &idr);
 np = vdd->rootent;
 depth = 0;
 if (vdd->vdd_type == VDD_JOLIET)
  genid = isoent_gen_joliet_identifier;
 else
  genid = isoent_gen_iso9660_identifier;
 do {
  if (np->virtual &&
      !archive_entry_mtime_is_set(np->file->entry)) {

   archive_entry_set_mtime(np->file->entry,
       iso9660->birth_time, 0);
   archive_entry_set_atime(np->file->entry,
       iso9660->birth_time, 0);
   archive_entry_set_ctime(np->file->entry,
       iso9660->birth_time, 0);
  }
  if (np->children.first != ((void*)0)) {
   if (vdd->vdd_type != VDD_JOLIET &&
       !iso9660->opt.rr && depth + 1 >= vdd->max_depth) {
    if (np->children.cnt > 0)
     iso9660->directories_too_deep = np;
   } else {

    r = genid(a, np, &idr);
    if (r < 0)
     goto exit_traverse_tree;
    r = isoent_make_sorted_files(a, np, &idr);
    if (r < 0)
     goto exit_traverse_tree;

    if (np->subdirs.first != ((void*)0) &&
        depth + 1 < vdd->max_depth) {

     np = np->subdirs.first;
     depth++;
     continue;
    }
   }
  }
  while (np != np->parent) {
   if (np->drnext == ((void*)0)) {

    np = np->parent;
    depth--;
   } else {
    np = np->drnext;
    break;
   }
  }
 } while (np != np->parent);

 r = ARCHIVE_OK;
exit_traverse_tree:
 idr_cleanup(&idr);

 return (r);
}
