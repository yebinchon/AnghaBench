
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_match {int exclusions; int archive; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FAILED ;
 int ARCHIVE_MATCH_MAGIC ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int EINVAL ;
 int add_pattern_mbs (struct archive_match*,int *,char const*) ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_set_error (int *,int ,char*) ;

int
archive_match_exclude_pattern(struct archive *_a, const char *pattern)
{
 struct archive_match *a;
 int r;

 archive_check_magic(_a, ARCHIVE_MATCH_MAGIC,
     ARCHIVE_STATE_NEW, "archive_match_exclude_pattern");
 a = (struct archive_match *)_a;

 if (pattern == ((void*)0) || *pattern == '\0') {
  archive_set_error(&(a->archive), EINVAL, "pattern is empty");
  return (ARCHIVE_FAILED);
 }
 if ((r = add_pattern_mbs(a, &(a->exclusions), pattern)) != ARCHIVE_OK)
  return (r);
 return (ARCHIVE_OK);
}
