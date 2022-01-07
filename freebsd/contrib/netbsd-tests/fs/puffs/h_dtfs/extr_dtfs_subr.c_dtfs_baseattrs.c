
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct vattr {int va_type; int va_mode; int va_nlink; int va_filerev; struct timespec va_birthtime; struct timespec va_ctime; struct timespec va_mtime; struct timespec va_atime; scalar_t__ va_vaflags; scalar_t__ va_bytes; int va_rdev; scalar_t__ va_flags; int va_gen; int va_blocksize; scalar_t__ va_size; int va_fileid; scalar_t__ va_gid; scalar_t__ va_uid; } ;
struct timeval {int dummy; } ;
typedef int ino_t ;
typedef enum vtype { ____Placeholder_vtype } vtype ;


 int PUFFS_VNOVAL ;
 int TIMEVAL_TO_TIMESPEC (struct timeval*,struct timespec*) ;
 int VDIR ;
 int getpagesize () ;
 int gettimeofday (struct timeval*,int *) ;
 int random () ;

void
dtfs_baseattrs(struct vattr *vap, enum vtype type, ino_t id)
{
 struct timeval tv;
 struct timespec ts;

 gettimeofday(&tv, ((void*)0));
 TIMEVAL_TO_TIMESPEC(&tv, &ts);

 vap->va_type = type;
 if (type == VDIR) {
  vap->va_mode = 0777;
  vap->va_nlink = 1;
 } else {
  vap->va_mode = 0666;
  vap->va_nlink = 0;
 }
 vap->va_uid = 0;
 vap->va_gid = 0;
 vap->va_fileid = id;
 vap->va_size = 0;
 vap->va_blocksize = getpagesize();
 vap->va_gen = random();
 vap->va_flags = 0;
 vap->va_rdev = PUFFS_VNOVAL;
 vap->va_bytes = 0;
 vap->va_filerev = 1;
 vap->va_vaflags = 0;

 vap->va_atime = vap->va_mtime = vap->va_ctime = vap->va_birthtime = ts;
}
