
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int archive_entry_copy_pathname (struct archive_entry*,char*) ;
 int archive_entry_free (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_set_mtime (struct archive_entry*,int,int) ;
 int archive_match_excluded (struct archive*,struct archive_entry*) ;
 int archive_match_time_excluded (struct archive*,struct archive_entry*) ;
 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int failure (char*) ;

__attribute__((used)) static void
excluded(struct archive *m)
{
 struct archive_entry *ae;

 if (!assert((ae = archive_entry_new()) != ((void*)0)))
  return;

 archive_entry_copy_pathname(ae, "file1");
 archive_entry_set_mtime(ae, 7879, 999);
 failure("It should be excluded");
 assertEqualInt(1, archive_match_time_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));
 archive_entry_set_mtime(ae, 7880, 0);
 failure("It should be excluded");
 assertEqualInt(1, archive_match_time_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));
 archive_entry_set_mtime(ae, 7880, 1);
 failure("It should not be excluded");
 assertEqualInt(0, archive_match_time_excluded(m, ae));
 assertEqualInt(0, archive_match_excluded(m, ae));

 archive_entry_copy_pathname(ae, "file2");
 archive_entry_set_mtime(ae, 7879, 999);
 failure("It should not be excluded");
 assertEqualInt(0, archive_match_time_excluded(m, ae));
 assertEqualInt(0, archive_match_excluded(m, ae));
 archive_entry_set_mtime(ae, 7880, 0);
 failure("It should not be excluded");
 assertEqualInt(0, archive_match_time_excluded(m, ae));
 assertEqualInt(0, archive_match_excluded(m, ae));
 archive_entry_set_mtime(ae, 7880, 1);
 failure("It should not be excluded");
 assertEqualInt(0, archive_match_time_excluded(m, ae));
 assertEqualInt(0, archive_match_excluded(m, ae));

 archive_entry_copy_pathname(ae, "file3");
 archive_entry_set_mtime(ae, 7879, 999);
 failure("It should be excluded");
 assertEqualInt(1, archive_match_time_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));
 archive_entry_set_mtime(ae, 7880, 0);
 failure("It should be excluded");
 assertEqualInt(1, archive_match_time_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));
 archive_entry_set_mtime(ae, 7880, 1);
 failure("It should be excluded");
 assertEqualInt(1, archive_match_time_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));





 archive_entry_copy_pathname(ae, "file4");
 archive_entry_set_mtime(ae, 7879, 999);
 failure("It should not be excluded");
 assertEqualInt(0, archive_match_time_excluded(m, ae));
 assertEqualInt(0, archive_match_excluded(m, ae));
 archive_entry_set_mtime(ae, 7880, 0);
 failure("It should not be excluded");
 assertEqualInt(0, archive_match_time_excluded(m, ae));
 assertEqualInt(0, archive_match_excluded(m, ae));
 archive_entry_set_mtime(ae, 7880, 1);
 failure("It should not be excluded");
 assertEqualInt(0, archive_match_time_excluded(m, ae));
 assertEqualInt(0, archive_match_excluded(m, ae));



 archive_entry_free(ae);
}
