
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct stat {int dummy; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int kern_statat (struct thread*,int,int,char*,int,struct stat*,int ) ;
 int translate_vnhook_major_minor ;

__attribute__((used)) static int
linux_kern_statat(struct thread *td, int flag, int fd, char *path,
    enum uio_seg pathseg, struct stat *sbp)
{

 return (kern_statat(td, flag, fd, path, pathseg, sbp,
     translate_vnhook_major_minor));
}
