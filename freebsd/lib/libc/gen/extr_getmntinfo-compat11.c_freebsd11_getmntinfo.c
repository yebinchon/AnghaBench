
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct freebsd11_statfs {int dummy; } ;


 int MNT_NOWAIT ;
 int free (struct freebsd11_statfs*) ;
 int freebsd11_getfsstat (struct freebsd11_statfs*,long,int) ;
 scalar_t__ malloc (long) ;

int
freebsd11_getmntinfo(struct freebsd11_statfs **mntbufp, int flags)
{
 static struct freebsd11_statfs *mntbuf;
 static int mntsize;
 static long bufsize;

 if (mntsize <= 0 &&
     (mntsize = freebsd11_getfsstat(0, 0, MNT_NOWAIT)) < 0)
  return (0);
 if (bufsize > 0 &&
     (mntsize = freebsd11_getfsstat(mntbuf, bufsize, flags)) < 0)
  return (0);
 while (bufsize <= mntsize * sizeof(struct freebsd11_statfs)) {
  if (mntbuf)
   free(mntbuf);
  bufsize = (mntsize + 1) * sizeof(struct freebsd11_statfs);
  if ((mntbuf = (struct freebsd11_statfs *)malloc(bufsize)) == 0)
   return (0);
  if ((mntsize = freebsd11_getfsstat(mntbuf, bufsize, flags)) < 0)
   return (0);
 }
 *mntbufp = mntbuf;
 return (mntsize);
}
