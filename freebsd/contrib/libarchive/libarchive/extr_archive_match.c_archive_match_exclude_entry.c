
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_match {int archive; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FAILED ;
 int ARCHIVE_MATCH_MAGIC ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int EINVAL ;
 int add_entry (struct archive_match*,int,struct archive_entry*) ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_set_error (int *,int ,char*) ;
 int validate_time_flag (struct archive*,int,char*) ;

int
archive_match_exclude_entry(struct archive *_a, int flag,
    struct archive_entry *entry)
{
 struct archive_match *a;
 int r;

 archive_check_magic(_a, ARCHIVE_MATCH_MAGIC,
     ARCHIVE_STATE_NEW, "archive_match_time_include_entry");
 a = (struct archive_match *)_a;

 if (entry == ((void*)0)) {
  archive_set_error(&(a->archive), EINVAL, "entry is NULL");
  return (ARCHIVE_FAILED);
 }
 r = validate_time_flag(_a, flag, "archive_match_exclude_entry");
 if (r != ARCHIVE_OK)
  return (r);
 return (add_entry(a, flag, entry));
}
