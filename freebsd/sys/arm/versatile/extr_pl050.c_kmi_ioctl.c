
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int keyboard_t ;
typedef int caddr_t ;


 int EDEADLK ;
 int Giant ;



 int KMI_LOCK () ;
 int KMI_UNLOCK () ;
 int SCHEDULER_STOPPED () ;
 int kmi_ioctl_locked (int *,int,int ) ;
 int mtx_owned (int *) ;

__attribute__((used)) static int
kmi_ioctl(keyboard_t *kbd, u_long cmd, caddr_t arg)
{
 int result;
 switch (cmd) {
 case 130:
 case 128:
 case 129:
  if (!mtx_owned(&Giant) && !SCHEDULER_STOPPED())
   return (EDEADLK);

 default:
  KMI_LOCK();
  result = kmi_ioctl_locked(kbd, cmd, arg);
  KMI_UNLOCK();
  return (result);
 }
}
