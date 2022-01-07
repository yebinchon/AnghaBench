
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_truncate_args {int length; int path; } ;


 int LCONVPATHEXIST (struct thread*,int ,char**) ;
 int LFREEPATH (char*) ;
 int UIO_SYSSPACE ;
 int kern_truncate (struct thread*,char*,int ,int ) ;

int
linux_truncate(struct thread *td, struct linux_truncate_args *args)
{
 char *path;
 int error;

 LCONVPATHEXIST(td, args->path, &path);

 error = kern_truncate(td, path, UIO_SYSSPACE, args->length);
 LFREEPATH(path);
 return (error);
}
