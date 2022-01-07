
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cloudabi_sys_file_advise_args {int advice; int len; int offset; int fd; } ;
 int EINVAL ;
 int POSIX_FADV_DONTNEED ;
 int POSIX_FADV_NOREUSE ;
 int POSIX_FADV_NORMAL ;
 int POSIX_FADV_RANDOM ;
 int POSIX_FADV_SEQUENTIAL ;
 int POSIX_FADV_WILLNEED ;
 int kern_posix_fadvise (struct thread*,int ,int ,int ,int) ;

int
cloudabi_sys_file_advise(struct thread *td,
    struct cloudabi_sys_file_advise_args *uap)
{
 int advice;

 switch (uap->advice) {
 case 133:
  advice = POSIX_FADV_DONTNEED;
  break;
 case 132:
  advice = POSIX_FADV_NOREUSE;
  break;
 case 131:
  advice = POSIX_FADV_NORMAL;
  break;
 case 130:
  advice = POSIX_FADV_RANDOM;
  break;
 case 129:
  advice = POSIX_FADV_SEQUENTIAL;
  break;
 case 128:
  advice = POSIX_FADV_WILLNEED;
  break;
 default:
  return (EINVAL);
 }

 return (kern_posix_fadvise(td, uap->fd, uap->offset, uap->len, advice));
}
