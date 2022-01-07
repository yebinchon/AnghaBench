
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int keyboard_t ;
typedef int caddr_t ;


 int CKB_LOCK () ;
 int CKB_UNLOCK () ;
 int EDEADLK ;
 int Giant ;



 int SCHEDULER_STOPPED () ;
 int ckb_ioctl_locked (int *,int,int ) ;
 int mtx_owned (int *) ;

__attribute__((used)) static int
ckb_ioctl(keyboard_t *kbd, u_long cmd, caddr_t arg)
{
 int result;
 switch (cmd) {
 case 130:
 case 128:
 case 129:
  if (!mtx_owned(&Giant) && !SCHEDULER_STOPPED())
   return (EDEADLK);

 default:
  CKB_LOCK();
  result = ckb_ioctl_locked(kbd, cmd, arg);
  CKB_UNLOCK();
  return (result);
 }
}
