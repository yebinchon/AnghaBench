
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int S_IFREG ;
 int archive_entry_copy_pathname (struct archive_entry*,char const*) ;
 int archive_entry_free (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_set_atime (struct archive_entry*,int,int) ;
 int archive_entry_set_birthtime (struct archive_entry*,int,int) ;
 int archive_entry_set_ctime (struct archive_entry*,int,int) ;
 int archive_entry_set_mode (struct archive_entry*,int) ;
 int archive_entry_set_mtime (struct archive_entry*,int,int) ;
 int archive_entry_set_size (struct archive_entry*,int ) ;
 int archive_entry_set_symlink (struct archive_entry*,char const*) ;
 int archive_write_header (struct archive*,struct archive_entry*) ;
 int assert (int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;

__attribute__((used)) static void
add_entry(struct archive *a, const char *fname, const char *sym)
{
 struct archive_entry *ae;

 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_birthtime(ae, 2, 20);
 archive_entry_set_atime(ae, 3, 30);
 archive_entry_set_ctime(ae, 4, 40);
 archive_entry_set_mtime(ae, 5, 50);
 archive_entry_copy_pathname(ae, fname);
 if (sym != ((void*)0))
  archive_entry_set_symlink(ae, sym);
 archive_entry_set_mode(ae, S_IFREG | 0555);
 archive_entry_set_size(ae, 0);
 assertEqualIntA(a, ARCHIVE_OK, archive_write_header(a, ae));
 archive_entry_free(ae);
}
