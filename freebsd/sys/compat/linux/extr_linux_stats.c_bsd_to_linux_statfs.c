
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int * val; } ;
struct statfs {int f_blocks; int f_bfree; int f_files; int f_bsize; int f_bavail; int f_ffree; TYPE_2__ f_fsid; int f_fstypename; } ;
struct TYPE_3__ {int * val; } ;
struct l_statfs {int f_bsize; int f_blocks; int f_bfree; int f_bavail; int f_ffree; int f_files; int f_frsize; int f_spare; scalar_t__ f_flags; int f_namelen; TYPE_1__ f_fsid; int f_type; } ;


 int EOVERFLOW ;
 int LINUX_HIBITS ;
 int MAXNAMLEN ;
 int bsd_to_linux_ftype (int ) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int
bsd_to_linux_statfs(struct statfs *bsd_statfs, struct l_statfs *linux_statfs)
{
 linux_statfs->f_type = bsd_to_linux_ftype(bsd_statfs->f_fstypename);
 linux_statfs->f_bsize = bsd_statfs->f_bsize;
 linux_statfs->f_blocks = bsd_statfs->f_blocks;
 linux_statfs->f_bfree = bsd_statfs->f_bfree;
 linux_statfs->f_bavail = bsd_statfs->f_bavail;
 linux_statfs->f_ffree = bsd_statfs->f_ffree;
 linux_statfs->f_files = bsd_statfs->f_files;
 linux_statfs->f_fsid.val[0] = bsd_statfs->f_fsid.val[0];
 linux_statfs->f_fsid.val[1] = bsd_statfs->f_fsid.val[1];
 linux_statfs->f_namelen = MAXNAMLEN;
 linux_statfs->f_frsize = bsd_statfs->f_bsize;
 linux_statfs->f_flags = 0;
 memset(linux_statfs->f_spare, 0, sizeof(linux_statfs->f_spare));

 return (0);
}
