
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int archive_entry_copy_uname_w (struct archive_entry*,char*) ;
 int archive_entry_free (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_match_excluded (struct archive*,struct archive_entry*) ;
 int archive_match_free (struct archive*) ;
 int archive_match_include_uname_w (struct archive*,char*) ;
 struct archive* archive_match_new () ;
 int archive_match_owner_excluded (struct archive*,struct archive_entry*) ;
 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int failure (char*) ;

__attribute__((used)) static void
test_uname_wcs(void)
{
 struct archive_entry *ae;
 struct archive *m;

 if (!assert((m = archive_match_new()) != ((void*)0)))
  return;
 if (!assert((ae = archive_entry_new()) != ((void*)0))) {
  archive_match_free(m);
  return;
 }

 assertEqualIntA(m, 0, archive_match_include_uname_w(m, L"foo"));
 assertEqualIntA(m, 0, archive_match_include_uname_w(m, L"bar"));

 archive_entry_copy_uname_w(ae, L"unknown");
 failure("User 'unknown' should be excluded");
 assertEqualInt(1, archive_match_owner_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));
 archive_entry_copy_uname_w(ae, L"foo");
 failure("User 'foo' should not be excluded");
 assertEqualInt(0, archive_match_owner_excluded(m, ae));
 assertEqualInt(0, archive_match_excluded(m, ae));
 archive_entry_copy_uname_w(ae, L"foo1");
 failure("User 'foo1' should be excluded");
 assertEqualInt(1, archive_match_owner_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));
 archive_entry_copy_uname_w(ae, L"bar");
 failure("User 'bar' should not be excluded");
 assertEqualInt(0, archive_match_owner_excluded(m, ae));
 assertEqualInt(0, archive_match_excluded(m, ae));
 archive_entry_copy_uname_w(ae, L"bar1");
 failure("User 'bar1' should be excluded");
 assertEqualInt(1, archive_match_owner_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));


 archive_entry_free(ae);
 archive_match_free(m);
}
