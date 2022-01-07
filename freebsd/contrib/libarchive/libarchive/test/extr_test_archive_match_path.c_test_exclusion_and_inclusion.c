
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_OK ;
 int archive_entry_clear (struct archive_entry*) ;
 int archive_entry_copy_pathname (struct archive_entry*,char*) ;
 int archive_entry_copy_pathname_w (struct archive_entry*,char*) ;
 int archive_entry_free (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_match_exclude_pattern (struct archive*,char*) ;
 int archive_match_excluded (struct archive*,struct archive_entry*) ;
 int archive_match_free (struct archive*) ;
 int archive_match_include_pattern (struct archive*,char*) ;
 int archive_match_include_pattern_w (struct archive*,char*) ;
 struct archive* archive_match_new () ;
 int archive_match_path_excluded (struct archive*,struct archive_entry*) ;
 int archive_match_path_unmatched_inclusions (struct archive*) ;
 int archive_match_path_unmatched_inclusions_next (struct archive*,char const**) ;
 int archive_match_path_unmatched_inclusions_next_w (struct archive*,int const**) ;
 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int assertEqualString (char*,char const*) ;
 int assertEqualWString (char*,int const*) ;
 int failure (char*) ;

__attribute__((used)) static void
test_exclusion_and_inclusion(void)
{
 struct archive_entry *ae;
 struct archive *m;
 const char *mp;
 const wchar_t *wp;

 if (!assert((m = archive_match_new()) != ((void*)0)))
  return;
 if (!assert((ae = archive_entry_new()) != ((void*)0))) {
  archive_match_free(m);
  return;
 }

 assertEqualIntA(m, 0, archive_match_exclude_pattern(m, "^aaa*"));
 assertEqualIntA(m, 0, archive_match_include_pattern_w(m, L"^aa*"));
 assertEqualIntA(m, 0, archive_match_include_pattern(m, "^a1*"));


 archive_entry_copy_pathname(ae, "aa1234");
 failure("'aa1234' should not be excluded");
 assertEqualInt(0, archive_match_path_excluded(m, ae));
 assertEqualInt(0, archive_match_excluded(m, ae));
 archive_entry_clear(ae);
 archive_entry_copy_pathname_w(ae, L"aa1234");
 failure("'aa1234' should not be excluded");
 assertEqualInt(0, archive_match_path_excluded(m, ae));
 assertEqualInt(0, archive_match_excluded(m, ae));


 archive_entry_copy_pathname(ae, "aaa1234");
 failure("'aaa1234' should be excluded");
 assertEqualInt(1, archive_match_path_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));
 archive_entry_clear(ae);
 archive_entry_copy_pathname_w(ae, L"aaa1234");
 failure("'aaa1234' should be excluded");
 assertEqualInt(1, archive_match_path_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));


 assertEqualInt(1, archive_match_path_unmatched_inclusions(m));

 assertEqualIntA(m, ARCHIVE_OK,
     archive_match_path_unmatched_inclusions_next(m, &mp));
 assertEqualString("^a1*", mp);
 assertEqualIntA(m, ARCHIVE_EOF,
     archive_match_path_unmatched_inclusions_next(m, &mp));

 assertEqualIntA(m, ARCHIVE_OK,
     archive_match_path_unmatched_inclusions_next_w(m, &wp));
 assertEqualWString(L"^a1*", wp);
 assertEqualIntA(m, ARCHIVE_EOF,
     archive_match_path_unmatched_inclusions_next_w(m, &wp));


 archive_entry_free(ae);
 archive_match_free(m);
}
