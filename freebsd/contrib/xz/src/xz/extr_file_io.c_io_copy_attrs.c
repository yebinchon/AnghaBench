
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct utimbuf {int modtime; int actime; } ;
struct timeval {long tv_usec; int tv_sec; } ;
struct timespec {long tv_nsec; int tv_sec; } ;
struct _utimbuf {int modtime; int actime; } ;
typedef int mode_t ;
struct TYPE_14__ {long tv_nsec; } ;
struct TYPE_15__ {long tv_nsec; TYPE_5__ st__tim; } ;
struct TYPE_12__ {long tv_nsec; } ;
struct TYPE_13__ {long tv_nsec; TYPE_3__ st__tim; } ;
struct TYPE_11__ {long tv_nsec; } ;
struct TYPE_10__ {long tv_nsec; } ;
struct TYPE_16__ {int st_uid; int st_gid; int st_mode; long st_atimensec; long st_mtimensec; int st_uatime; int st_umtime; int st_mtime; int st_atime; TYPE_6__ st_mtim; TYPE_4__ st_atim; TYPE_2__ st_mtimespec; TYPE_1__ st_atimespec; } ;
struct TYPE_17__ {int dest_name; TYPE_7__ src_st; int dest_fd; } ;
typedef TYPE_8__ file_pair ;


 int _ (char*) ;
 int _futime (int ,struct _utimbuf*) ;
 int errno ;
 scalar_t__ fchmod (int ,int) ;
 scalar_t__ fchown (int ,int,int) ;
 int futimens (int ,struct timespec*) ;
 int futimes (int ,struct timeval*) ;
 int futimesat (int ,int *,struct timeval*) ;
 int message_warning (int ,int ,int ) ;
 int strerror (int ) ;
 int utime (int ,struct utimbuf*) ;
 int utimes (int ,struct timeval*) ;
 scalar_t__ warn_fchown ;

__attribute__((used)) static void
io_copy_attrs(const file_pair *pair)
{
 if (fchown(pair->dest_fd, pair->src_st.st_uid, -1) && warn_fchown)
  message_warning(_("%s: Cannot set the file owner: %s"),
    pair->dest_name, strerror(errno));

 mode_t mode;

 if (fchown(pair->dest_fd, -1, pair->src_st.st_gid)) {
  message_warning(_("%s: Cannot set the file group: %s"),
    pair->dest_name, strerror(errno));
  mode = ((pair->src_st.st_mode & 0070) >> 3)
    & (pair->src_st.st_mode & 0007);
  mode = (pair->src_st.st_mode & 0700) | (mode << 3) | mode;
 } else {

  mode = pair->src_st.st_mode & 0777;
 }

 if (fchmod(pair->dest_fd, mode))
  message_warning(_("%s: Cannot set the file permissions: %s"),
    pair->dest_name, strerror(errno));
 long atime_nsec;
 long mtime_nsec;
 atime_nsec = 0;
 mtime_nsec = 0;
 return;
}
