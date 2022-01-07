
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
 int ID_IS_SET ;
 int PATTERN_IS_SET ;
 int TIME_IS_SET ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_pathname_w (struct archive_entry*) ;
 int archive_set_error (int *,int ,char*) ;
 int owner_excluded (struct archive_match*,struct archive_entry*) ;
 int path_excluded (struct archive_match*,int,int ) ;
 int time_excluded (struct archive_match*,struct archive_entry*) ;

int
archive_match_excluded(struct archive *_a, struct archive_entry *entry)
{
 struct archive_match *a;
 int r;

 archive_check_magic(_a, ARCHIVE_MATCH_MAGIC,
     ARCHIVE_STATE_NEW, "archive_match_excluded_ae");

 a = (struct archive_match *)_a;
 if (entry == ((void*)0)) {
  archive_set_error(&(a->archive), EINVAL, "entry is NULL");
  return (ARCHIVE_FAILED);
 }

 r = 0;
 if (a->setflag & PATTERN_IS_SET) {



  r = path_excluded(a, 1, archive_entry_pathname(entry));

  if (r != 0)
   return (r);
 }

 if (a->setflag & TIME_IS_SET) {
  r = time_excluded(a, entry);
  if (r != 0)
   return (r);
 }

 if (a->setflag & ID_IS_SET)
  r = owner_excluded(a, entry);
 return (r);
}
