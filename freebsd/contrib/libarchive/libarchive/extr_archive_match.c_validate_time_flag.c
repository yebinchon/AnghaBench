
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int ARCHIVE_FAILED ;
 int ARCHIVE_MATCH_CTIME ;
 int ARCHIVE_MATCH_EQUAL ;
 int ARCHIVE_MATCH_MAGIC ;
 int ARCHIVE_MATCH_MTIME ;
 int ARCHIVE_MATCH_NEWER ;
 int ARCHIVE_MATCH_OLDER ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int EINVAL ;
 int archive_check_magic (struct archive*,int ,int ,char const*) ;
 int archive_set_error (struct archive*,int ,char*) ;

__attribute__((used)) static int
validate_time_flag(struct archive *_a, int flag, const char *_fn)
{
 archive_check_magic(_a, ARCHIVE_MATCH_MAGIC,
     ARCHIVE_STATE_NEW, _fn);


 if (flag &
    ((~(ARCHIVE_MATCH_MTIME | ARCHIVE_MATCH_CTIME)) & 0xff00)) {
  archive_set_error(_a, EINVAL, "Invalid time flag");
  return (ARCHIVE_FAILED);
 }
 if ((flag & (ARCHIVE_MATCH_MTIME | ARCHIVE_MATCH_CTIME)) == 0) {
  archive_set_error(_a, EINVAL, "No time flag");
  return (ARCHIVE_FAILED);
 }


 if (flag &
    ((~(ARCHIVE_MATCH_NEWER | ARCHIVE_MATCH_OLDER
   | ARCHIVE_MATCH_EQUAL)) & 0x00ff)) {
  archive_set_error(_a, EINVAL, "Invalid comparison flag");
  return (ARCHIVE_FAILED);
 }
 if ((flag & (ARCHIVE_MATCH_NEWER | ARCHIVE_MATCH_OLDER
     | ARCHIVE_MATCH_EQUAL)) == 0) {
  archive_set_error(_a, EINVAL, "No comparison flag");
  return (ARCHIVE_FAILED);
 }

 return (ARCHIVE_OK);
}
