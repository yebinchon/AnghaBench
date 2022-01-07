
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmid_ds {int shm_ctime; int shm_dtime; int shm_atime; int shm_nattch; int shm_cpid; int shm_lpid; int shm_segsz; int shm_perm; } ;
struct l_shmid64_ds {int shm_ctime; int shm_dtime; int shm_atime; int shm_nattch; int shm_cpid; int shm_lpid; int shm_segsz; int shm_perm; } ;


 int bsd_to_linux_ipc_perm (int *,int *) ;

__attribute__((used)) static void
bsd_to_linux_shmid_ds(struct shmid_ds *bsp, struct l_shmid64_ds *lsp)
{

 bsd_to_linux_ipc_perm(&bsp->shm_perm, &lsp->shm_perm);
 lsp->shm_segsz = bsp->shm_segsz;
 lsp->shm_lpid = bsp->shm_lpid;
 lsp->shm_cpid = bsp->shm_cpid;
 lsp->shm_nattch = bsp->shm_nattch;
 lsp->shm_atime = bsp->shm_atime;
 lsp->shm_dtime = bsp->shm_dtime;
 lsp->shm_ctime = bsp->shm_ctime;
}
