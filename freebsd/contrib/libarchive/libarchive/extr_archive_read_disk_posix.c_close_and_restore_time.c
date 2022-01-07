
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int flags; } ;
struct timeval {int tv_usec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;
struct restore_time {int mtime_nsec; int atime_nsec; scalar_t__ filetype; int name; int atime; int mtime; scalar_t__ noatime; } ;


 scalar_t__ AE_IFLNK ;
 int close (int) ;
 scalar_t__ futimens (int,struct timespec*) ;
 scalar_t__ futimes (int,struct timeval*) ;
 scalar_t__ futimesat (int ,int ,struct timeval*) ;
 scalar_t__ lutimes (int ,struct timeval*) ;
 int needsRestoreTimes ;
 int tree_current_dir_fd (struct tree*) ;
 scalar_t__ utimes (int ,struct timeval*) ;

__attribute__((used)) static int
close_and_restore_time(int fd, struct tree *t, struct restore_time *rt)
{

 (void)t;
 (void)rt;
 return (close(fd));
 return (0);
}
