
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procdata {int retval; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct devdata {int retval; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;


 int AFSCALL_SETPAG ;

 int ENOSYS ;



 int SIGSYS ;



 int Setpag () ;
 int afs_entry_point ;
 int * afs_syscalls ;
 int do_ioctl (struct procdata*) ;
 int errno ;
 int getpid () ;
 int kill (int ,int ) ;
 int syscall (int ,...) ;

int
k_setpag(void)
{

    switch(afs_entry_point){
    case 133: {
 struct procdata data = { 0, 0, 0, 0, AFSCALL_SETPAG };
 return do_ioctl(&data);
    }
    case 132: {
 struct devdata data = { AFSCALL_SETPAG, 0, 0, 0, 0, 0, 0, 0 };
 int ret = do_ioctl(&data);
 if (ret)
     return ret;
 return data.retval;
     }




    }

    errno = ENOSYS;




    return -1;
}
