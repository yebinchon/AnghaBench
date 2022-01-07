
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int archive_entry_clear (struct archive_entry*) ;
 int archive_entry_copy_pathname (struct archive_entry*,char*) ;
 int archive_entry_copy_pathname_w (struct archive_entry*,char*) ;
 int archive_entry_free (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_match_excluded (struct archive*,struct archive_entry*) ;
 int archive_match_free (struct archive*) ;
 int archive_match_path_excluded (struct archive*,struct archive_entry*) ;
 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int failure (char*) ;

__attribute__((used)) static void
exclusion_from_file(struct archive *m)
{
 struct archive_entry *ae;

 if (!assert((ae = archive_entry_new()) != ((void*)0))) {
  archive_match_free(m);
  return;
 }


 archive_entry_copy_pathname(ae, "first");
 failure("'first' should not be excluded");
 assertEqualInt(0, archive_match_path_excluded(m, ae));
 assertEqualInt(0, archive_match_excluded(m, ae));
 archive_entry_clear(ae);
 archive_entry_copy_pathname_w(ae, L"first");
 failure("'first' should not be excluded");
 assertEqualInt(0, archive_match_path_excluded(m, ae));
 assertEqualInt(0, archive_match_excluded(m, ae));


 archive_entry_copy_pathname(ae, "second");
 failure("'second' should be excluded");
 assertEqualInt(1, archive_match_path_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));
 archive_entry_clear(ae);
 archive_entry_copy_pathname_w(ae, L"second");
 failure("'second' should be excluded");
 assertEqualInt(1, archive_match_path_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));


 archive_entry_copy_pathname(ae, "third");
 failure("'third' should not be excluded");
 assertEqualInt(0, archive_match_path_excluded(m, ae));
 assertEqualInt(0, archive_match_excluded(m, ae));
 archive_entry_clear(ae);
 archive_entry_copy_pathname_w(ae, L"third");
 failure("'third' should not be excluded");
 assertEqualInt(0, archive_match_path_excluded(m, ae));
 assertEqualInt(0, archive_match_excluded(m, ae));


 archive_entry_copy_pathname(ae, "four");
 failure("'four' should be excluded");
 assertEqualInt(1, archive_match_path_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));
 archive_entry_clear(ae);
 archive_entry_copy_pathname_w(ae, L"four");
 failure("'four' should be excluded");
 assertEqualInt(1, archive_match_path_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));


 archive_entry_free(ae);
}
