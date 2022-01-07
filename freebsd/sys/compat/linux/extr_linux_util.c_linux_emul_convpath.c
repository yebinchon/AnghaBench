
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int kern_alternate_path (struct thread*,int ,char const*,int,char**,int,int) ;
 int linux_emul_path ;

int
linux_emul_convpath(struct thread *td, const char *path, enum uio_seg pathseg,
    char **pbuf, int cflag, int dfd)
{
 int retval;

 retval = kern_alternate_path(td, linux_emul_path, path, pathseg, pbuf,
     cflag, dfd);

 return (retval);
}
