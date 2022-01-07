
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int max_depth; } ;
struct TYPE_7__ {int iso_level; scalar_t__ joliet; scalar_t__ limit_dirs; scalar_t__ rr; int limit_depth; } ;
struct iso9660 {scalar_t__ dircnt_max; TYPE_2__ joliet; TYPE_1__ opt; TYPE_2__ primary; } ;
struct archive_write {int archive; struct iso9660* format_data; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 scalar_t__ MAX_DEPTH ;
 int archive_set_error (int *,int ,char*,int) ;
 int calculate_path_table_size (TYPE_2__*) ;
 int isoent_alloc_path_table (struct archive_write*,TYPE_2__*,scalar_t__) ;
 int isoent_collect_dirs (TYPE_2__*,int *,int ) ;
 int isoent_make_path_table_2 (struct archive_write*,TYPE_2__*,int,int*) ;
 int isoent_rr_move (struct archive_write*) ;
 int isoent_traverse_tree (struct archive_write*,TYPE_2__*) ;
 int isofile_connect_hardlink_files (struct iso9660*) ;

__attribute__((used)) static int
isoent_make_path_table(struct archive_write *a)
{
 struct iso9660 *iso9660 = a->format_data;
 int depth, r;
 int dir_number;




 if (iso9660->dircnt_max >= MAX_DEPTH &&
     (!iso9660->opt.limit_depth || iso9660->opt.iso_level == 4))
  r = isoent_alloc_path_table(a, &(iso9660->primary),
      iso9660->dircnt_max + 1);
 else


  r = isoent_alloc_path_table(a, &(iso9660->primary),
      MAX_DEPTH);
 if (r < 0)
  return (r);
 if (iso9660->opt.joliet) {
  r = isoent_alloc_path_table(a, &(iso9660->joliet),
      iso9660->dircnt_max + 1);
  if (r < 0)
   return (r);
 }




 isoent_collect_dirs(&(iso9660->primary), ((void*)0), 0);
 if (iso9660->opt.joliet)
  isoent_collect_dirs(&(iso9660->joliet), ((void*)0), 0);



 if (iso9660->opt.rr) {
  r = isoent_rr_move(a);
  if (r < 0)
   return (r);
 }


 isofile_connect_hardlink_files(iso9660);







 r = isoent_traverse_tree(a, &(iso9660->primary));
 if (r < 0)
  return (r);
 if (iso9660->opt.joliet) {
  r = isoent_traverse_tree(a, &(iso9660->joliet));
  if (r < 0)
   return (r);
 }





 dir_number = 1;
 for (depth = 0; depth < iso9660->primary.max_depth; depth++) {
  r = isoent_make_path_table_2(a, &(iso9660->primary),
      depth, &dir_number);
  if (r < 0)
   return (r);
 }
 if (iso9660->opt.joliet) {
  dir_number = 1;
  for (depth = 0; depth < iso9660->joliet.max_depth; depth++) {
   r = isoent_make_path_table_2(a, &(iso9660->joliet),
       depth, &dir_number);
   if (r < 0)
    return (r);
  }
 }
 if (iso9660->opt.limit_dirs && dir_number > 0xffff) {






  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Too many directories(%d) over 65535.", dir_number);
  return (ARCHIVE_FATAL);
 }


 calculate_path_table_size(&(iso9660->primary));
 if (iso9660->opt.joliet)
  calculate_path_table_size(&(iso9660->joliet));

 return (ARCHIVE_OK);
}
