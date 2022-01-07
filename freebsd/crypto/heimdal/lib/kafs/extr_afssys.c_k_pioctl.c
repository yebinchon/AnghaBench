
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procdata {unsigned long param1; unsigned long param2; unsigned long param3; unsigned long param4; int retval; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct devdata {unsigned long param1; unsigned long param2; unsigned long param3; unsigned long param4; int retval; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct ViceIoctl {int dummy; } ;


 int AFSCALL_PIOCTL ;

 int ENOSYS ;



 int Pioctl (char*,int,struct ViceIoctl*,int) ;
 int SIGSYS ;



 int afs_entry_point ;
 int * afs_syscalls ;
 int do_ioctl (struct procdata*) ;
 int errno ;
 int getpid () ;
 int kill (int ,int ) ;
 int syscall (int ,char*,...) ;

int
k_pioctl(char *a_path,
  int o_opcode,
  struct ViceIoctl *a_paramsP,
  int a_followSymlinks)
{

    switch(afs_entry_point){
    case 133: {
 struct procdata data = { 0, 0, 0, 0, AFSCALL_PIOCTL };
 data.param1 = (unsigned long)a_path;
 data.param2 = (unsigned long)o_opcode;
 data.param3 = (unsigned long)a_paramsP;
 data.param4 = (unsigned long)a_followSymlinks;
 return do_ioctl(&data);
    }
    case 132: {
 struct devdata data = { AFSCALL_PIOCTL, 0, 0, 0, 0, 0, 0, 0 };
 int ret;

 data.param1 = (unsigned long)a_path;
 data.param2 = (unsigned long)o_opcode;
 data.param3 = (unsigned long)a_paramsP;
 data.param4 = (unsigned long)a_followSymlinks;

 ret = do_ioctl(&data);
 if (ret)
     return ret;

 return data.retval;
    }




    }
    errno = ENOSYS;




    return -1;
}
