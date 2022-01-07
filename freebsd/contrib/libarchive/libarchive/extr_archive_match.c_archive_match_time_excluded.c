
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_match {int setflag; int archive; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FAILED ;
 int ARCHIVE_MATCH_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int EINVAL ;
 int TIME_IS_SET ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_set_error (int *,int ,char*) ;
 int time_excluded (struct archive_match*,struct archive_entry*) ;

int
archive_match_time_excluded(struct archive *_a,
    struct archive_entry *entry)
{
 struct archive_match *a;

 archive_check_magic(_a, ARCHIVE_MATCH_MAGIC,
     ARCHIVE_STATE_NEW, "archive_match_time_excluded_ae");

 a = (struct archive_match *)_a;
 if (entry == ((void*)0)) {
  archive_set_error(&(a->archive), EINVAL, "entry is NULL");
  return (ARCHIVE_FAILED);
 }



 if ((a->setflag & TIME_IS_SET) == 0)
  return (0);
 return (time_excluded(a, entry));
}
