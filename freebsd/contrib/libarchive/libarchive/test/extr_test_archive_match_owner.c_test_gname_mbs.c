
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int archive_entry_copy_gname (struct archive_entry*,char*) ;
 int archive_entry_free (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_match_excluded (struct archive*,struct archive_entry*) ;
 int archive_match_free (struct archive*) ;
 int archive_match_include_gname (struct archive*,char*) ;
 struct archive* archive_match_new () ;
 int archive_match_owner_excluded (struct archive*,struct archive_entry*) ;
 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int failure (char*) ;

__attribute__((used)) static void
test_gname_mbs(void)
{
 struct archive_entry *ae;
 struct archive *m;

 if (!assert((m = archive_match_new()) != ((void*)0)))
  return;
 if (!assert((ae = archive_entry_new()) != ((void*)0))) {
  archive_match_free(m);
  return;
 }

 assertEqualIntA(m, 0, archive_match_include_gname(m, "foo"));
 assertEqualIntA(m, 0, archive_match_include_gname(m, "bar"));

 archive_entry_copy_gname(ae, "unknown");
 failure("Group 'unknown' should be excluded");
 assertEqualInt(1, archive_match_owner_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));
 archive_entry_copy_gname(ae, "foo");
 failure("Group 'foo' should not be excluded");
 assertEqualInt(0, archive_match_owner_excluded(m, ae));
 assertEqualInt(0, archive_match_excluded(m, ae));
 archive_entry_copy_gname(ae, "foo1");
 failure("Group 'foo1' should be excluded");
 assertEqualInt(1, archive_match_owner_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));
 archive_entry_copy_gname(ae, "bar");
 failure("Group 'bar' should not be excluded");
 assertEqualInt(0, archive_match_owner_excluded(m, ae));
 assertEqualInt(0, archive_match_excluded(m, ae));
 archive_entry_copy_gname(ae, "bar1");
 failure("Group 'bar1' should be excluded");
 assertEqualInt(1, archive_match_owner_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));


 archive_entry_free(ae);
 archive_match_free(m);
}
