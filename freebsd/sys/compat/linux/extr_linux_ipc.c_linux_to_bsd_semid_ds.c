
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semid_ds {int sem_nsems; int sem_ctime; int sem_otime; int sem_perm; } ;
struct l_semid64_ds {int sem_nsems; int sem_ctime; int sem_otime; int sem_perm; } ;


 int linux_to_bsd_ipc_perm (int *,int *) ;

__attribute__((used)) static void
linux_to_bsd_semid_ds(struct l_semid64_ds *lsp, struct semid_ds *bsp)
{

 linux_to_bsd_ipc_perm(&lsp->sem_perm, &bsp->sem_perm);
 bsp->sem_otime = lsp->sem_otime;
 bsp->sem_ctime = lsp->sem_ctime;
 bsp->sem_nsems = lsp->sem_nsems;
}
