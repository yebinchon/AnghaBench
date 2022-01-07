
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_dev; } ;
struct quotafile {int fd; int quotatype; int wordsize; int accmode; int qfname; int fsname; int dev; } ;
struct group {int gr_gid; } ;
struct fstab {int fs_vfstype; int fs_file; } ;
struct dqhdr64 {void* dqh_reclen; void* dqh_hdrlen; void* dqh_version; int dqh_magic; } ;
struct dqblk64 {int dummy; } ;
typedef int dqh ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int O_ACCMODE ;
 int O_CLOEXEC ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int QCMD (int ,int) ;
 int QUOTAGROUP ;
 char* Q_DQHDR64_MAGIC ;
 int Q_DQHDR64_VERSION ;
 int Q_GETQUOTASIZE ;
 int be32toh (void*) ;
 struct quotafile* calloc (int,int) ;
 int close (int) ;
 int errno ;
 int fchmod (int,int) ;
 int fchown (int,int ,int ) ;
 int free (struct quotafile*) ;
 struct group* getgrnam (int ) ;
 int hasquota (struct fstab*,int,int ,int) ;
 void* htobe32 (int) ;
 int memcpy (int ,char*,int) ;
 int memset (struct dqhdr64*,int ,int) ;
 void* open (int ,int,...) ;
 scalar_t__ quotactl (int ,int,int ,int*) ;
 int read (int,struct dqhdr64*,int) ;
 scalar_t__ stat (int ,struct stat*) ;
 scalar_t__ strcmp (int ,char*) ;
 int strlcpy (int ,int ,int) ;
 int unlink (int ) ;
 int write (int,struct dqhdr64*,int) ;

struct quotafile *
quota_open(struct fstab *fs, int quotatype, int openflags)
{
 struct quotafile *qf;
 struct dqhdr64 dqh;
 struct group *grp;
 struct stat st;
 int qcmd, serrno = 0;
 int ufs;

 if ((qf = calloc(1, sizeof(*qf))) == ((void*)0))
  return (((void*)0));
 qf->fd = -1;
 qf->quotatype = quotatype;
 strlcpy(qf->fsname, fs->fs_file, sizeof(qf->fsname));
 if (stat(qf->fsname, &st) != 0)
  goto error;
 qf->dev = st.st_dev;
 qcmd = QCMD(Q_GETQUOTASIZE, quotatype);
 ufs = strcmp(fs->fs_vfstype, "ufs") == 0;




 if (ufs) {
  serrno = hasquota(fs, quotatype, qf->qfname,
      sizeof(qf->qfname));
 }
 if (quotactl(qf->fsname, qcmd, 0, &qf->wordsize) == 0)
  return (qf);
 if (!ufs) {
  errno = 0;
  goto error;
 } else if (serrno == 0) {
  errno = EOPNOTSUPP;
  goto error;
 }
 qf->accmode = openflags & O_ACCMODE;
 if ((qf->fd = open(qf->qfname, qf->accmode|O_CLOEXEC)) < 0 &&
     (openflags & O_CREAT) != O_CREAT)
  goto error;

 if (qf->fd != -1) {
  qf->wordsize = 32;
  switch (read(qf->fd, &dqh, sizeof(dqh))) {
  case -1:
   goto error;
  case sizeof(dqh):
   if (strcmp(dqh.dqh_magic, Q_DQHDR64_MAGIC) != 0) {

    qf->wordsize = 32;
    return (qf);
   }
   if (be32toh(dqh.dqh_version) != Q_DQHDR64_VERSION ||
       be32toh(dqh.dqh_hdrlen) != sizeof(struct dqhdr64) ||
       be32toh(dqh.dqh_reclen) != sizeof(struct dqblk64)) {

    errno = EINVAL;
    goto error;
   }
   qf->wordsize = 64;
   return (qf);
  default:
   qf->wordsize = 32;
   return (qf);
  }

 }

 if ((qf->fd = open(qf->qfname, O_RDWR|O_CREAT|O_TRUNC|O_CLOEXEC, 0)) <
     0)
  goto error;
 qf->wordsize = 64;
 memset(&dqh, 0, sizeof(dqh));
 memcpy(dqh.dqh_magic, Q_DQHDR64_MAGIC, sizeof(dqh.dqh_magic));
 dqh.dqh_version = htobe32(Q_DQHDR64_VERSION);
 dqh.dqh_hdrlen = htobe32(sizeof(struct dqhdr64));
 dqh.dqh_reclen = htobe32(sizeof(struct dqblk64));
 if (write(qf->fd, &dqh, sizeof(dqh)) != sizeof(dqh)) {

  unlink(qf->qfname);
  goto error;
 }
 grp = getgrnam(QUOTAGROUP);
 fchown(qf->fd, 0, grp ? grp->gr_gid : 0);
 fchmod(qf->fd, 0640);
 return (qf);
error:
 serrno = errno;

 if (qf->fd != -1)
  close(qf->fd);
 free(qf);
 errno = serrno;
 return (((void*)0));
}
