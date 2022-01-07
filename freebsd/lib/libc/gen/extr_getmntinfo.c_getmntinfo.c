
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int dummy; } ;


 int MAX_TRIES ;
 int MNT_NOWAIT ;
 int SCALING_FACTOR ;
 int getfsstat (struct statfs*,long,int) ;
 struct statfs* reallocf (struct statfs*,long) ;

int
getmntinfo(struct statfs **mntbufp, int mode)
{
 static struct statfs *mntbuf;
 static int mntsize;
 static long bufsize;
 unsigned tries = 0;

 if (mntsize <= 0 && (mntsize = getfsstat(0, 0, MNT_NOWAIT)) < 0)
  return (0);
 if (bufsize > 0 && (mntsize = getfsstat(mntbuf, bufsize, mode)) < 0)
  return (0);
 while (tries++ < MAX_TRIES && bufsize <= mntsize * sizeof(*mntbuf)) {
  bufsize = (mntsize * SCALING_FACTOR) * sizeof(*mntbuf);
  if ((mntbuf = reallocf(mntbuf, bufsize)) == ((void*)0))
   return (0);
  if ((mntsize = getfsstat(mntbuf, bufsize, mode)) < 0)
   return (0);
 }
 *mntbufp = mntbuf;
 if (mntsize > (bufsize / sizeof(*mntbuf)))
  return (bufsize / sizeof(*mntbuf));
 return (mntsize);
}
