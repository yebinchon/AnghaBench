
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isofile {int entry; struct isofile* hlnext; } ;
struct iso9660 {int hardlink_rbtree; } ;
struct TYPE_2__ {struct isofile** last; struct isofile* first; } ;
struct hardlink {int nlink; TYPE_1__ file_list; } ;
struct archive_write {int archive; struct iso9660* format_data; } ;
struct archive_rb_node {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 scalar_t__ __archive_rb_tree_find_node (int *,char const*) ;
 int __archive_rb_tree_insert_node (int *,struct archive_rb_node*) ;
 char* archive_entry_hardlink (int ) ;
 int archive_entry_set_nlink (int ,int) ;
 int archive_entry_unset_size (int ) ;
 int archive_set_error (int *,int ,char*) ;
 struct hardlink* malloc (int) ;

__attribute__((used)) static int
isofile_register_hardlink(struct archive_write *a, struct isofile *file)
{
 struct iso9660 *iso9660 = a->format_data;
 struct hardlink *hl;
 const char *pathname;

 archive_entry_set_nlink(file->entry, 1);
 pathname = archive_entry_hardlink(file->entry);
 if (pathname == ((void*)0)) {

  hl = malloc(sizeof(*hl));
  if (hl == ((void*)0)) {
   archive_set_error(&a->archive, ENOMEM,
       "Can't allocate memory");
   return (ARCHIVE_FATAL);
  }
  hl->nlink = 1;

  file->hlnext = ((void*)0);
  hl->file_list.first = file;
  hl->file_list.last = &(file->hlnext);
  __archive_rb_tree_insert_node(&(iso9660->hardlink_rbtree),
      (struct archive_rb_node *)hl);
 } else {
  hl = (struct hardlink *)__archive_rb_tree_find_node(
      &(iso9660->hardlink_rbtree), pathname);
  if (hl != ((void*)0)) {

   file->hlnext = ((void*)0);
   *hl->file_list.last = file;
   hl->file_list.last = &(file->hlnext);
   hl->nlink++;
  }
  archive_entry_unset_size(file->entry);
 }

 return (ARCHIVE_OK);
}
