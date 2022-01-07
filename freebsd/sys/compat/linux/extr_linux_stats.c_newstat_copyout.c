
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tbuf ;
struct TYPE_12__ {int tv_nsec; int tv_sec; } ;
struct TYPE_10__ {int tv_nsec; int tv_sec; } ;
struct TYPE_8__ {int tv_nsec; int tv_sec; } ;
struct stat {int st_blocks; int st_blksize; TYPE_6__ st_ctim; TYPE_4__ st_mtim; TYPE_2__ st_atim; int st_size; int st_rdev; int st_gid; int st_uid; int st_nlink; int st_mode; int st_ino; int st_dev; } ;
struct TYPE_11__ {int tv_nsec; int tv_sec; } ;
struct TYPE_9__ {int tv_nsec; int tv_sec; } ;
struct TYPE_7__ {int tv_nsec; int tv_sec; } ;
struct l_newstat {int st_blocks; int st_blksize; TYPE_5__ st_ctim; TYPE_3__ st_mtim; TYPE_1__ st_atim; int st_size; int st_rdev; int st_gid; int st_uid; int st_nlink; int st_mode; int st_ino; int st_dev; } ;


 int bzero (struct l_newstat*,int) ;
 int copyout (struct l_newstat*,void*,int) ;
 int dev_to_ldev (int ) ;

__attribute__((used)) static int
newstat_copyout(struct stat *buf, void *ubuf)
{
 struct l_newstat tbuf;

 bzero(&tbuf, sizeof(tbuf));
 tbuf.st_dev = dev_to_ldev(buf->st_dev);
 tbuf.st_ino = buf->st_ino;
 tbuf.st_mode = buf->st_mode;
 tbuf.st_nlink = buf->st_nlink;
 tbuf.st_uid = buf->st_uid;
 tbuf.st_gid = buf->st_gid;
 tbuf.st_rdev = buf->st_rdev;
 tbuf.st_size = buf->st_size;
 tbuf.st_atim.tv_sec = buf->st_atim.tv_sec;
 tbuf.st_atim.tv_nsec = buf->st_atim.tv_nsec;
 tbuf.st_mtim.tv_sec = buf->st_mtim.tv_sec;
 tbuf.st_mtim.tv_nsec = buf->st_mtim.tv_nsec;
 tbuf.st_ctim.tv_sec = buf->st_ctim.tv_sec;
 tbuf.st_ctim.tv_nsec = buf->st_ctim.tv_nsec;
 tbuf.st_blksize = buf->st_blksize;
 tbuf.st_blocks = buf->st_blocks;

 return (copyout(&tbuf, ubuf, sizeof(tbuf)));
}
