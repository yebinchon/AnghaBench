
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmid_ds {int shm_ctime; int shm_dtime; int shm_atime; int shm_nattch; int shm_cpid; int shm_lpid; int shm_segsz; int shm_perm; } ;
struct l_shmid64_ds {int shm_ctime; int shm_dtime; int shm_atime; int shm_nattch; int shm_cpid; int shm_lpid; int shm_segsz; int shm_perm; } ;


 int linux_to_bsd_ipc_perm (int *,int *) ;

__attribute__((used)) static void
linux_to_bsd_shmid_ds(struct l_shmid64_ds *lsp, struct shmid_ds *bsp)
{

 linux_to_bsd_ipc_perm(&lsp->shm_perm, &bsp->shm_perm);
 bsp->shm_segsz = lsp->shm_segsz;
 bsp->shm_lpid = lsp->shm_lpid;
 bsp->shm_cpid = lsp->shm_cpid;
 bsp->shm_nattch = lsp->shm_nattch;
 bsp->shm_atime = lsp->shm_atime;
 bsp->shm_dtime = lsp->shm_dtime;
 bsp->shm_ctime = lsp->shm_ctime;
}
