
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
 int archive_match_exclude_pattern_w (struct archive*,char*) ;
 int archive_match_excluded (struct archive*,struct archive_entry*) ;
 int archive_match_free (struct archive*) ;
 struct archive* archive_match_new () ;
 int archive_match_path_excluded (struct archive*,struct archive_entry*) ;
 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int failure (char*) ;

__attribute__((used)) static void
test_exclusion_wcs(void)
{
 struct archive_entry *ae;
 struct archive *m;

 if (!assert((m = archive_match_new()) != ((void*)0)))
  return;
 if (!assert((ae = archive_entry_new()) != ((void*)0))) {
  archive_match_free(m);
  return;
 }


 assertEqualIntA(m, 0, archive_match_exclude_pattern_w(m, L"^aa*"));


 archive_entry_copy_pathname(ae, "aa1234");
 failure("'aa1234' should be excluded");
 assertEqualInt(1, archive_match_path_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));
 archive_entry_clear(ae);
 archive_entry_copy_pathname_w(ae, L"aa1234");
 failure("'aa1234' should be excluded");
 assertEqualInt(1, archive_match_path_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));


 archive_entry_copy_pathname(ae, "a1234");
 failure("'a1234' should not be excluded");
 assertEqualInt(0, archive_match_path_excluded(m, ae));
 assertEqualInt(0, archive_match_excluded(m, ae));
 archive_entry_clear(ae);
 archive_entry_copy_pathname_w(ae, L"a1234");
 failure("'a1234' should not be excluded");
 assertEqualInt(0, archive_match_path_excluded(m, ae));
 assertEqualInt(0, archive_match_excluded(m, ae));


 archive_entry_free(ae);
 archive_match_free(m);
}
