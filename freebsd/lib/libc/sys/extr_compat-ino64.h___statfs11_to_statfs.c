
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_mntonname; int f_mntfromname; int f_fstypename; int f_charspare; int f_spare; int f_fsid; int f_owner; int f_namemax; int f_asyncreads; int f_syncreads; int f_asyncwrites; int f_syncwrites; int f_ffree; int f_files; int f_bavail; int f_bfree; int f_blocks; int f_iosize; int f_bsize; int f_flags; int f_type; int f_version; } ;
struct freebsd11_statfs {int f_mntonname; int f_mntfromname; int f_fstypename; int f_fsid; int f_owner; int f_namemax; int f_asyncreads; int f_syncreads; int f_asyncwrites; int f_syncwrites; int f_ffree; int f_files; int f_bavail; int f_bfree; int f_blocks; int f_iosize; int f_bsize; int f_flags; int f_type; } ;


 int STATFS_VERSION ;
 int memset (int ,int ,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static __inline void
__statfs11_to_statfs(const struct freebsd11_statfs *sf11, struct statfs *sf)
{

 sf->f_version = STATFS_VERSION;
 sf->f_type = sf11->f_type;
 sf->f_flags = sf11->f_flags;
 sf->f_bsize = sf11->f_bsize;
 sf->f_iosize = sf11->f_iosize;
 sf->f_blocks = sf11->f_blocks;
 sf->f_bfree = sf11->f_bfree;
 sf->f_bavail = sf11->f_bavail;
 sf->f_files = sf11->f_files;
 sf->f_ffree = sf11->f_ffree;
 sf->f_syncwrites = sf11->f_syncwrites;
 sf->f_asyncwrites = sf11->f_asyncwrites;
 sf->f_syncreads = sf11->f_syncreads;
 sf->f_asyncreads = sf11->f_asyncreads;
 sf->f_namemax = sf11->f_namemax;
 sf->f_owner = sf11->f_owner;
 sf->f_fsid = sf11->f_fsid;
 memset(sf->f_spare, 0, sizeof(sf->f_spare));
 memset(sf->f_charspare, 0, sizeof(sf->f_charspare));
 strlcpy(sf->f_fstypename, sf11->f_fstypename, sizeof(sf->f_fstypename));
 strlcpy(sf->f_mntfromname, sf11->f_mntfromname, sizeof(sf->f_mntfromname));
 strlcpy(sf->f_mntonname, sf11->f_mntonname, sizeof(sf->f_mntonname));
}
