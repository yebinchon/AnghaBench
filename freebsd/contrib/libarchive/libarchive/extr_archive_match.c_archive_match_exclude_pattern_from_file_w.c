
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_match {int exclusions; } ;
struct archive {int dummy; } ;


 int ARCHIVE_MATCH_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int add_pattern_from_file (struct archive_match*,int *,int ,int const*,int) ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;

int
archive_match_exclude_pattern_from_file_w(struct archive *_a,
    const wchar_t *pathname, int nullSeparator)
{
 struct archive_match *a;

 archive_check_magic(_a, ARCHIVE_MATCH_MAGIC,
     ARCHIVE_STATE_NEW, "archive_match_exclude_pattern_from_file_w");
 a = (struct archive_match *)_a;

 return add_pattern_from_file(a, &(a->exclusions), 0, pathname,
  nullSeparator);
}
