
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* time_t ;
struct utimbuf {void* modtime; void* actime; } ;
struct timeval {long tv_usec; void* tv_sec; } ;
struct timespec {long tv_nsec; void* tv_sec; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int AT_FDCWD ;
 int AT_SYMLINK_NOFOLLOW ;
 scalar_t__ S_ISLNK (int) ;
 int futimens (int,struct timespec*) ;
 int futimes (int,struct timeval*) ;
 int lutimes (char const*,struct timeval*) ;
 int utime (char const*,struct utimbuf*) ;
 int utimensat (int ,char const*,struct timespec*,int ) ;
 int utimes (char const*,struct timeval*) ;

__attribute__((used)) static int
set_time(int fd, int mode, const char *name,
    time_t atime, long atime_nsec,
    time_t mtime, long mtime_nsec)
{
 (void)fd;
 (void)mode;
 (void)name;
 (void)atime_nsec;
 (void)mtime_nsec;
 return (ARCHIVE_WARN);

}
