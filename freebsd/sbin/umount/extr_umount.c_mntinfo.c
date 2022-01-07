
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int dummy; } ;


 int MNT_NOWAIT ;
 int err (int,char*) ;
 int getfsstat (struct statfs*,long,int ) ;
 struct statfs* malloc (size_t) ;

size_t
mntinfo(struct statfs **mntbuf)
{
 static struct statfs *origbuf;
 size_t bufsize;
 int mntsize;

 mntsize = getfsstat(((void*)0), 0, MNT_NOWAIT);
 if (mntsize <= 0)
  return (0);
 bufsize = (mntsize + 1) * sizeof(struct statfs);
 if ((origbuf = malloc(bufsize)) == ((void*)0))
  err(1, "malloc");
 mntsize = getfsstat(origbuf, (long)bufsize, MNT_NOWAIT);
 *mntbuf = origbuf;
 return (mntsize);
}
