
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct cpio {int option_atime_restore; } ;
struct archive_entry {int dummy; } ;
struct __timeval {int dummy; } ;


 scalar_t__ AE_IFLNK ;
 int archive_entry_atime (struct archive_entry*) ;
 int archive_entry_atime_nsec (struct archive_entry*) ;
 scalar_t__ archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_mtime_nsec (struct archive_entry*) ;
 int close (int) ;
 int errno ;
 scalar_t__ futimes (int,struct timeval*) ;
 int lafe_warnc (int ,char*,...) ;
 scalar_t__ lutimes (char const*,struct timeval*) ;
 scalar_t__ utimes (char const*,struct timeval*) ;

__attribute__((used)) static int
restore_time(struct cpio *cpio, struct archive_entry *entry,
    const char *name, int fd)
{

 static int warned = 0;

 (void)cpio;
 (void)entry;
 (void)name;

 if (!warned)
  lafe_warnc(0, "Can't restore access times on this platform");
 warned = 1;
 return (fd);
 return (fd);
}
