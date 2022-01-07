
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtree_entry {TYPE_1__* dir_info; } ;
struct archive_write {int archive; } ;
struct archive_entry {int dummy; } ;
struct TYPE_2__ {int virtual; } ;


 int AE_IFDIR ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int ENOMEM ;
 int archive_entry_copy_pathname (struct archive_entry*,char const*) ;
 int archive_entry_free (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_set_mode (struct archive_entry*,int) ;
 int archive_entry_set_mtime (struct archive_entry*,int ,int ) ;
 int archive_set_error (int *,int ,char*) ;
 int mtree_entry_new (struct archive_write*,struct archive_entry*,struct mtree_entry**) ;
 int time (int *) ;

__attribute__((used)) static int
mtree_entry_create_virtual_dir(struct archive_write *a, const char *pathname,
    struct mtree_entry **m_entry)
{
 struct archive_entry *entry;
 struct mtree_entry *file;
 int r;

 entry = archive_entry_new();
 if (entry == ((void*)0)) {
  *m_entry = ((void*)0);
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate memory");
  return (ARCHIVE_FATAL);
 }
 archive_entry_copy_pathname(entry, pathname);
 archive_entry_set_mode(entry, AE_IFDIR | 0755);
 archive_entry_set_mtime(entry, time(((void*)0)), 0);

 r = mtree_entry_new(a, entry, &file);
 archive_entry_free(entry);
 if (r < ARCHIVE_WARN) {
  *m_entry = ((void*)0);
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate memory");
  return (ARCHIVE_FATAL);
 }

 file->dir_info->virtual = 1;

 *m_entry = file;
 return (ARCHIVE_OK);
}
