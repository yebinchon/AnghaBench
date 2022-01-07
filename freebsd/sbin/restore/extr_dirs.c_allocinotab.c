
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct modeinfo {int gid; int uid; int flags; int mode; int extsize; TYPE_2__* ctimep; TYPE_1__* mtimep; int ino; } ;
struct inotab {long t_seekpt; int t_ino; struct inotab* t_next; } ;
struct context {int gid; int uid; int file_flags; int mode; int extsize; int birthtime_nsec; int birthtime_sec; int atime_nsec; int atime_sec; int mtime_nsec; int mtime_sec; int ino; } ;
struct TYPE_4__ {int tv_nsec; int tv_sec; } ;
struct TYPE_3__ {int tv_nsec; int tv_sec; } ;


 size_t INOHASH (int ) ;
 struct inotab* calloc (int,int) ;
 int fail_dirtmp (int ) ;
 int fwrite (char*,int,int,int *) ;
 struct inotab** inotab ;
 int * mf ;
 int modefile ;
 int panic (char*) ;

__attribute__((used)) static struct inotab *
allocinotab(struct context *ctxp, long seekpt)
{
 struct inotab *itp;
 struct modeinfo node;

 itp = calloc(1, sizeof(struct inotab));
 if (itp == ((void*)0))
  panic("no memory for directory table\n");
 itp->t_next = inotab[INOHASH(ctxp->ino)];
 inotab[INOHASH(ctxp->ino)] = itp;
 itp->t_ino = ctxp->ino;
 itp->t_seekpt = seekpt;
 if (mf == ((void*)0))
  return (itp);
 node.ino = ctxp->ino;
 node.mtimep[0].tv_sec = ctxp->atime_sec;
 node.mtimep[0].tv_nsec = ctxp->atime_nsec;
 node.mtimep[1].tv_sec = ctxp->mtime_sec;
 node.mtimep[1].tv_nsec = ctxp->mtime_nsec;
 node.ctimep[0].tv_sec = ctxp->atime_sec;
 node.ctimep[0].tv_nsec = ctxp->atime_nsec;
 node.ctimep[1].tv_sec = ctxp->birthtime_sec;
 node.ctimep[1].tv_nsec = ctxp->birthtime_nsec;
 node.extsize = ctxp->extsize;
 node.mode = ctxp->mode;
 node.flags = ctxp->file_flags;
 node.uid = ctxp->uid;
 node.gid = ctxp->gid;
 if (fwrite((char *)&node, sizeof(struct modeinfo), 1, mf) != 1)
  fail_dirtmp(modefile);
 return (itp);
}
