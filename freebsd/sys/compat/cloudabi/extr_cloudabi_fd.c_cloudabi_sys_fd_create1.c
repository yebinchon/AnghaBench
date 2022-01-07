
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct filecaps {int fc_rights; } ;
struct cloudabi_sys_fd_create1_args {int type; } ;


 int CAP_FSTAT ;
 int CAP_FTRUNCATE ;
 int CAP_MMAP_RWX ;

 int EINVAL ;
 int F_SEAL_SEAL ;
 int O_CLOEXEC ;
 int O_RDWR ;
 int SHM_ANON ;
 int cap_rights_init (int *,int ,int ,int ) ;
 int kern_shm_open (struct thread*,int ,int,int ,struct filecaps*,int ) ;

int
cloudabi_sys_fd_create1(struct thread *td,
    struct cloudabi_sys_fd_create1_args *uap)
{
 struct filecaps fcaps = {};

 switch (uap->type) {
 case 128:
  cap_rights_init(&fcaps.fc_rights, CAP_FSTAT, CAP_FTRUNCATE,
      CAP_MMAP_RWX);
  return (kern_shm_open(td, SHM_ANON, O_RDWR | O_CLOEXEC, 0,
      &fcaps, F_SEAL_SEAL));
 default:
  return (EINVAL);
 }
}
