
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct thread {int td_ucred; } ;
struct stat {int dummy; } ;
struct file {int dummy; } ;
struct cloudabi_sys_file_stat_fget_args {int buf; int fd; } ;
typedef int csb ;
typedef int cloudabi_filetype_t ;
struct TYPE_5__ {int st_filetype; } ;
typedef TYPE_1__ cloudabi_filestat_t ;


 int cap_fstat_rights ;
 int cloudabi_convert_filetype (struct file*) ;
 int convert_stat (struct stat*,TYPE_1__*) ;
 int copyout (TYPE_1__*,int ,int) ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int ,int *,struct file**) ;
 int fo_stat (struct file*,struct stat*,int ,struct thread*) ;
 int memset (TYPE_1__*,int ,int) ;

int
cloudabi_sys_file_stat_fget(struct thread *td,
    struct cloudabi_sys_file_stat_fget_args *uap)
{
 struct stat sb;
 cloudabi_filestat_t csb;
 struct file *fp;
 cloudabi_filetype_t filetype;
 int error;

 memset(&csb, 0, sizeof(csb));


 error = fget(td, uap->fd, &cap_fstat_rights, &fp);
 if (error != 0)
  return (error);
 error = fo_stat(fp, &sb, td->td_ucred, td);
 if (error != 0) {
  fdrop(fp, td);
  return (error);
 }
 filetype = cloudabi_convert_filetype(fp);
 fdrop(fp, td);


 convert_stat(&sb, &csb);
 csb.st_filetype = filetype;
 return (copyout(&csb, uap->buf, sizeof(csb)));
}
