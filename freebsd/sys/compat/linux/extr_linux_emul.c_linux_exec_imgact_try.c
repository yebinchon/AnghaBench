
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct image_params {char* interpreter_name; TYPE_1__* args; int proc; scalar_t__ image_header; } ;
struct TYPE_2__ {char* fname_buf; } ;


 int AT_FDCWD ;
 int FIRST_THREAD_IN_PROC (int ) ;
 short const SHELLMAGIC ;
 int UIO_SYSSPACE ;
 int exec_shell_imgact (struct image_params*) ;
 int linux_emul_convpath (int ,char*,int ,char**,int ,int ) ;

int
linux_exec_imgact_try(struct image_params *imgp)
{
 const char *head = (const char *)imgp->image_header;
 char *rpath;
 int error = -1;






 if (((const short *)head)[0] == SHELLMAGIC) {





  if ((error = exec_shell_imgact(imgp)) == 0) {
   linux_emul_convpath(FIRST_THREAD_IN_PROC(imgp->proc),
       imgp->interpreter_name, UIO_SYSSPACE, &rpath, 0,
       AT_FDCWD);
   if (rpath != ((void*)0))
    imgp->args->fname_buf =
        imgp->interpreter_name = rpath;
  }
 }
 return (error);
}
