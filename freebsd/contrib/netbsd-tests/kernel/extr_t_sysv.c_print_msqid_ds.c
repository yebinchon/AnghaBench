
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef int u_long ;
struct TYPE_2__ {int uid; int gid; int cuid; int cgid; int mode; } ;
struct msqid_ds {TYPE_1__ msg_perm; int msg_ctime; int msg_rtime; int msg_stime; int msg_lrpid; int msg_lspid; scalar_t__ msg_qbytes; int msg_qnum; } ;
typedef int mode_t ;
typedef scalar_t__ gid_t ;


 int ATF_REQUIRE_MSG (int,char*) ;
 char* ctime (int *) ;
 scalar_t__ getegid () ;
 scalar_t__ geteuid () ;
 int printf (char*,...) ;

void
print_msqid_ds(struct msqid_ds *mp, mode_t mode)
{
 uid_t uid = geteuid();
 gid_t gid = getegid();

 printf("PERM: uid %d, gid %d, cuid %d, cgid %d, mode 0%o\n",
     mp->msg_perm.uid, mp->msg_perm.gid,
     mp->msg_perm.cuid, mp->msg_perm.cgid,
     mp->msg_perm.mode & 0777);

 printf("qnum %lu, qbytes %lu, lspid %d, lrpid %d\n",
     mp->msg_qnum, (u_long)mp->msg_qbytes, mp->msg_lspid,
     mp->msg_lrpid);

 printf("stime: %s", ctime(&mp->msg_stime));
 printf("rtime: %s", ctime(&mp->msg_rtime));
 printf("ctime: %s", ctime(&mp->msg_ctime));





 ATF_REQUIRE_MSG(mp->msg_perm.uid == uid && mp->msg_perm.cuid == uid,
     "uid mismatch");

 ATF_REQUIRE_MSG(mp->msg_perm.gid == gid && mp->msg_perm.cgid == gid,
     "gid mismatch");

 ATF_REQUIRE_MSG((mp->msg_perm.mode & 0777) == mode, "mode mismatch");
}
