
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quotafile {int accmode; int fd; int wordsize; char* qfname; } ;
struct group {int gr_gid; } ;
struct dqhdr64 {void* dqh_reclen; void* dqh_hdrlen; void* dqh_version; int dqh_magic; } ;
struct dqblk64 {int dummy; } ;
struct dqblk {int dummy; } ;
typedef int dqh ;


 int EBADF ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ MAXPATHLEN ;
 int O_CLOEXEC ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int QUOTAGROUP ;
 int Q_DQHDR64_MAGIC ;
 int Q_DQHDR64_VERSION ;
 struct quotafile* calloc (int,int) ;
 int errno ;
 int fchmod (int,int) ;
 int fchown (int,int ,int ) ;
 int free (struct quotafile*) ;
 struct group* getgrnam (int ) ;
 void* htobe32 (int) ;
 int memcpy (int ,int ,int) ;
 int memset (struct dqhdr64*,int ,int) ;
 int open (char*,int,int ) ;
 int quota_close (struct quotafile*) ;
 int quota_maxid (struct quotafile*) ;
 scalar_t__ quota_read (struct quotafile*,struct dqblk*,int) ;
 int quota_write32 (struct quotafile*,struct dqblk*,int) ;
 int quota_write64 (struct quotafile*,struct dqblk*,int) ;
 scalar_t__ rename (char*,char*) ;
 int snprintf (char*,scalar_t__,char*,char*,int) ;
 int write (int,struct dqhdr64*,int) ;

int
quota_convert(struct quotafile *qf, int wordsize)
{
 struct quotafile *newqf;
 struct dqhdr64 dqh;
 struct dqblk dqblk;
 struct group *grp;
 int serrno, maxid, id, fd;





 if ((qf->accmode & O_RDWR) != O_RDWR || qf->fd == -1) {
  errno = EBADF;
  return (-1);
 }
 if ((wordsize != 32 && wordsize != 64) ||
      wordsize == qf->wordsize) {
  errno = EINVAL;
  return (-1);
 }
 maxid = quota_maxid(qf);
 if ((newqf = calloc(1, sizeof(*qf))) == ((void*)0)) {
  errno = ENOMEM;
  return (-1);
 }
 *newqf = *qf;
 snprintf(newqf->qfname, MAXPATHLEN + 1, "%s_%d.orig", qf->qfname,
     qf->wordsize);
 if (rename(qf->qfname, newqf->qfname) < 0) {
  free(newqf);
  return (-1);
 }
 if ((newqf->fd = open(qf->qfname, O_RDWR|O_CREAT|O_TRUNC|O_CLOEXEC,
     0)) < 0) {
  serrno = errno;
  goto error;
 }
 newqf->wordsize = wordsize;
 if (wordsize == 64) {
  memset(&dqh, 0, sizeof(dqh));
  memcpy(dqh.dqh_magic, Q_DQHDR64_MAGIC, sizeof(dqh.dqh_magic));
  dqh.dqh_version = htobe32(Q_DQHDR64_VERSION);
  dqh.dqh_hdrlen = htobe32(sizeof(struct dqhdr64));
  dqh.dqh_reclen = htobe32(sizeof(struct dqblk64));
  if (write(newqf->fd, &dqh, sizeof(dqh)) != sizeof(dqh)) {
   serrno = errno;
   goto error;
  }
 }
 grp = getgrnam(QUOTAGROUP);
 fchown(newqf->fd, 0, grp ? grp->gr_gid : 0);
 fchmod(newqf->fd, 0640);
 for (id = 0; id <= maxid; id++) {
  if ((quota_read(qf, &dqblk, id)) < 0)
   break;
  switch (newqf->wordsize) {
  case 32:
   if ((quota_write32(newqf, &dqblk, id)) < 0)
    break;
   continue;
  case 64:
   if ((quota_write64(newqf, &dqblk, id)) < 0)
    break;
   continue;
  default:
   errno = EINVAL;
   break;
  }
 }
 if (id < maxid) {
  serrno = errno;
  goto error;
 }




 fd = qf->fd;
 qf->fd = newqf->fd;
 newqf->fd = fd;
 qf->wordsize = newqf->wordsize;
 quota_close(newqf);
 return (0);
error:

 (void) rename(newqf->qfname, qf->qfname);
 quota_close(newqf);
 errno = serrno;
 return (-1);
}
