
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef int u_long ;
struct TYPE_2__ {int uid; int gid; int cuid; int cgid; int mode; } ;
struct shmid_ds {TYPE_1__ shm_perm; int shm_ctime; int shm_dtime; int shm_atime; int shm_nattch; int shm_cpid; int shm_lpid; scalar_t__ shm_segsz; } ;
typedef int mode_t ;
typedef scalar_t__ gid_t ;


 int ATF_REQUIRE_MSG (int,char*) ;
 char* ctime (int *) ;
 scalar_t__ getegid () ;
 scalar_t__ geteuid () ;
 int printf (char*,...) ;

void
print_shmid_ds(struct shmid_ds *sp, mode_t mode)
{
 uid_t uid = geteuid();
 gid_t gid = getegid();

 printf("PERM: uid %d, gid %d, cuid %d, cgid %d, mode 0%o\n",
     sp->shm_perm.uid, sp->shm_perm.gid,
     sp->shm_perm.cuid, sp->shm_perm.cgid,
     sp->shm_perm.mode & 0777);

 printf("segsz %lu, lpid %d, cpid %d, nattch %u\n",
     (u_long)sp->shm_segsz, sp->shm_lpid, sp->shm_cpid,
     sp->shm_nattch);

 printf("atime: %s", ctime(&sp->shm_atime));
 printf("dtime: %s", ctime(&sp->shm_dtime));
 printf("ctime: %s", ctime(&sp->shm_ctime));





 ATF_REQUIRE_MSG(sp->shm_perm.uid == uid && sp->shm_perm.cuid == uid,
     "uid mismatch");

 ATF_REQUIRE_MSG(sp->shm_perm.gid == gid && sp->shm_perm.cgid == gid,
     "gid mismatch");

 ATF_REQUIRE_MSG((sp->shm_perm.mode & 0777) == mode, "mode mismatch");
}
