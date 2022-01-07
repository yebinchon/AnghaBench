
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int ;
struct open_file {scalar_t__ f_fsdata; } ;
typedef int off_t ;
struct TYPE_9__ {int bsize; int lsndir; int fatsz; } ;
struct TYPE_8__ {int offset; int c; TYPE_2__* fs; int de; } ;
typedef TYPE_1__ DOS_FILE ;


 int EINVAL ;
 scalar_t__ blkoff (TYPE_2__*,int) ;
 int bytblk (TYPE_2__*,int) ;
 int fatget (TYPE_2__*,int*) ;
 int fsize (TYPE_2__*,int *) ;
 int ioread (TYPE_2__*,scalar_t__,void*,int) ;
 int okclus (TYPE_2__*,int) ;
 scalar_t__ secbyt (int ) ;
 int stclus (int ,int *) ;
 int twiddle (int) ;

__attribute__((used)) static int
dos_read(struct open_file *fd, void *buf, size_t nbyte, size_t *resid)
{
    off_t size;
    u_int nb, off, clus, c, cnt, n;
    DOS_FILE *f = (DOS_FILE *)fd->f_fsdata;
    int err = 0;






    twiddle(4);
    nb = (u_int)nbyte;
    if ((size = fsize(f->fs, &f->de)) == -1)
 return (EINVAL);
    if (nb > (n = size - f->offset))
 nb = n;
    off = f->offset;
    if ((clus = stclus(f->fs->fatsz, &f->de)))
 off &= f->fs->bsize - 1;
    c = f->c;
    cnt = nb;
    while (cnt) {
 n = 0;
 if (!c) {
     if ((c = clus))
  n = bytblk(f->fs, f->offset);
 } else if (!off)
     n++;
 while (n--) {
     if ((err = fatget(f->fs, &c)))
  goto out;
     if (!okclus(f->fs, c)) {
  err = EINVAL;
  goto out;
     }
 }
 if (!clus || (n = f->fs->bsize - off) > cnt)
     n = cnt;
 if ((err = ioread(f->fs, (c ? blkoff(f->fs, c) :
          secbyt(f->fs->lsndir)) + off, buf, n)))
     goto out;
 f->offset += n;
 f->c = c;
 off = 0;
 buf = (char *)buf + n;
 cnt -= n;
    }
 out:
    if (resid)
 *resid = nbyte - nb + cnt;
    return (err);
}
