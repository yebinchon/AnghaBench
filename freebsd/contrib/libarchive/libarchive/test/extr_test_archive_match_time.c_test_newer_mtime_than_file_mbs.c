
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_MATCH_MTIME ;
 int ARCHIVE_MATCH_NEWER ;
 int ARCHIVE_OK ;
 int archive_entry_clear (struct archive_entry*) ;
 int archive_entry_copy_pathname (struct archive_entry*,char*) ;
 int archive_entry_free (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_match_excluded (struct archive*,struct archive_entry*) ;
 int archive_match_free (struct archive*) ;
 int archive_match_include_file_time (struct archive*,int,char*) ;
 struct archive* archive_match_new () ;
 int archive_match_time_excluded (struct archive*,struct archive_entry*) ;
 int archive_read_disk_entry_from_file (struct archive*,struct archive_entry*,int,int *) ;
 struct archive* archive_read_disk_new () ;
 int archive_read_free (struct archive*) ;
 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int failure (char*) ;

__attribute__((used)) static void
test_newer_mtime_than_file_mbs(void)
{
 struct archive *a;
 struct archive_entry *ae;
 struct archive *m;

 if (!assert((m = archive_match_new()) != ((void*)0)))
  return;
 if (!assert((ae = archive_entry_new()) != ((void*)0))) {
  archive_match_free(m);
  return;
 }
 if (!assert((a = archive_read_disk_new()) != ((void*)0))) {
  archive_match_free(m);
  archive_entry_free(ae);
  return;
 }




 assertEqualIntA(m, 0, archive_match_include_file_time(m,
     ARCHIVE_MATCH_MTIME | ARCHIVE_MATCH_NEWER, "mid_mtime"));


 archive_entry_copy_pathname(ae, "old_mtime");
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_disk_entry_from_file(a, ae, -1, ((void*)0)));
 failure("old_mtime should be excluded");
 assertEqualInt(1, archive_match_time_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));


 archive_entry_clear(ae);
 archive_entry_copy_pathname(ae, "mid_mtime");
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_disk_entry_from_file(a, ae, -1, ((void*)0)));
 failure("mid_mtime should be excluded");
 assertEqualInt(1, archive_match_time_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));


 archive_entry_clear(ae);
 archive_entry_copy_pathname(ae, "new_mtime");
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_disk_entry_from_file(a, ae, -1, ((void*)0)));
 failure("new_mtime should not be excluded");
 assertEqualInt(0, archive_match_time_excluded(m, ae));
 assertEqualInt(0, archive_match_excluded(m, ae));


 archive_read_free(a);
 archive_entry_free(ae);
 archive_match_free(m);
}
