
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quotafile {int dummy; } ;
struct fstab {char* fs_file; char* fs_mntops; char* fs_vfstype; } ;
struct dqblk {int dummy; } ;


 int GRPQUOTA ;
 int O_RDONLY ;
 int USRQUOTA ;
 scalar_t__ debug ;
 int quota_close (struct quotafile*) ;
 struct quotafile* quota_open (struct fstab*,int,int ) ;
 scalar_t__ quota_read (struct quotafile*,struct dqblk*,long) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
getfsquota(int type, long id, char *path, struct dqblk *dqblk)
{
 struct quotafile *qf;
 int rv;
 static char blank[] = "";
 struct fstab fst;

 fst.fs_file = path;
 fst.fs_mntops = blank;
 fst.fs_vfstype = blank;

 if (type != USRQUOTA && type != GRPQUOTA)
  return (0);

 qf = quota_open(&fst, type, O_RDONLY);
 if (debug)
  warnx("quota_open(<%s, %s>, %d) returned %p",
        fst.fs_file, fst.fs_mntops, type,
        qf);
 if (qf == ((void*)0))
  return (0);

 rv = quota_read(qf, dqblk, id) == 0;
 quota_close(qf);
 if (debug)
  warnx("getfsquota(%d, %ld, %s, %p) -> %d",
        type, id, path, dqblk, rv);
 return (rv);
}
