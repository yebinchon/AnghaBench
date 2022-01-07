
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_chdir_args {int path; } ;


 int LCONVPATHEXIST (struct thread*,int ,char**) ;
 int LFREEPATH (char*) ;
 int UIO_SYSSPACE ;
 int kern_chdir (struct thread*,char*,int ) ;

int
linux_chdir(struct thread *td, struct linux_chdir_args *args)
{
 char *path;
 int error;

 LCONVPATHEXIST(td, args->path, &path);

 error = kern_chdir(td, path, UIO_SYSSPACE);
 LFREEPATH(path);
 return (error);
}
