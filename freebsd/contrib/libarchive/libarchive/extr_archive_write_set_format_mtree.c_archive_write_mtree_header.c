
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtree_writer {int keys; struct mtree_entry* mtree_entry; scalar_t__ dironly; int entry_bytes_remaining; scalar_t__ output_global_set; int buf; scalar_t__ first; } ;
struct mtree_entry {scalar_t__ reg_info; } ;
struct archive_write {struct mtree_writer* format_data; } ;
struct archive_entry {int dummy; } ;


 scalar_t__ AE_IFDIR ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int SET_KEYS ;
 scalar_t__ archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_strcat (int *,char*) ;
 int mtree_entry_free (struct mtree_entry*) ;
 int mtree_entry_new (struct archive_write*,struct archive_entry*,struct mtree_entry**) ;
 int mtree_entry_tree_add (struct archive_write*,struct mtree_entry**) ;
 int sum_init (struct mtree_writer*) ;

__attribute__((used)) static int
archive_write_mtree_header(struct archive_write *a,
    struct archive_entry *entry)
{
 struct mtree_writer *mtree= a->format_data;
 struct mtree_entry *mtree_entry;
 int r, r2;

 if (mtree->first) {
  mtree->first = 0;
  archive_strcat(&mtree->buf, "#mtree\n");
  if ((mtree->keys & SET_KEYS) == 0)
   mtree->output_global_set = 0;
 }

 mtree->entry_bytes_remaining = archive_entry_size(entry);


 if (mtree->dironly && archive_entry_filetype(entry) != AE_IFDIR)
  return (ARCHIVE_OK);

 r2 = mtree_entry_new(a, entry, &mtree_entry);
 if (r2 < ARCHIVE_WARN)
  return (r2);
 r = mtree_entry_tree_add(a, &mtree_entry);
 if (r < ARCHIVE_WARN) {
  mtree_entry_free(mtree_entry);
  return (r);
 }
 mtree->mtree_entry = mtree_entry;




 if (mtree_entry->reg_info)
  sum_init(mtree);

 return (r2);
}
