
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct archive_write_disk {scalar_t__ user_uid; int archive; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int archive_set_error (int *,int ,char*) ;
 int errno ;
 int set_time (int,int,char const*,scalar_t__,long,scalar_t__,long) ;
 scalar_t__ set_time_tru64 (int,int,char const*,scalar_t__,long,scalar_t__,long,scalar_t__,long) ;

__attribute__((used)) static int
set_times(struct archive_write_disk *a,
    int fd, int mode, const char *name,
    time_t atime, long atime_nanos,
    time_t birthtime, long birthtime_nanos,
    time_t mtime, long mtime_nanos,
    time_t cctime, long ctime_nanos)
{


 int r1 = 0, r2 = 0;
 (void)cctime;
 (void)ctime_nanos;
 (void)birthtime;
 (void)birthtime_nanos;

 r2 = set_time(fd, mode, name,
        atime, atime_nanos,
        mtime, mtime_nanos);
 if (r1 != 0 || r2 != 0) {
  archive_set_error(&a->archive, errno,
      "Can't restore time");
  return (ARCHIVE_WARN);
 }
 return (ARCHIVE_OK);
}
