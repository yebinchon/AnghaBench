
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int* td_retval; } ;
struct linux_getcwd_args {int bufsize; int buf; } ;


 int ERANGE ;
 int LINUX_PATH_MAX ;
 int M_LINUX ;
 int M_WAITOK ;
 int UIO_SYSSPACE ;
 int copyout (char*,int ,int) ;
 int free (char*,int ) ;
 int kern___getcwd (struct thread*,char*,int ,int,int ) ;
 char* malloc (int ,int ,int ) ;
 int strlen (char*) ;

int
linux_getcwd(struct thread *td, struct linux_getcwd_args *args)
{
 char *path;
 int error, lenused;




 if (args->bufsize < 2)
  return (ERANGE);

 path = malloc(LINUX_PATH_MAX, M_LINUX, M_WAITOK);

 error = kern___getcwd(td, path, UIO_SYSSPACE, args->bufsize,
     LINUX_PATH_MAX);
 if (error == 0) {
  lenused = strlen(path) + 1;
  error = copyout(path, args->buf, lenused);
  if (error == 0)
   td->td_retval[0] = lenused;
 }

 free(path, M_LINUX);
 return (error);
}
