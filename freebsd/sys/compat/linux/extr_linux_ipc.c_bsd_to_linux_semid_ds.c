
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semid_ds {int sem_nsems; int sem_ctime; int sem_otime; int sem_perm; } ;
struct l_semid64_ds {int sem_nsems; int sem_ctime; int sem_otime; int sem_perm; } ;


 int bsd_to_linux_ipc_perm (int *,int *) ;

__attribute__((used)) static void
bsd_to_linux_semid_ds(struct semid_ds *bsp, struct l_semid64_ds *lsp)
{

 bsd_to_linux_ipc_perm(&bsp->sem_perm, &lsp->sem_perm);
 lsp->sem_otime = bsp->sem_otime;
 lsp->sem_ctime = bsp->sem_ctime;
 lsp->sem_nsems = bsp->sem_nsems;
}
