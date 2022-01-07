
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int NS_UNAVAIL ;
 int SET_TERMINATOR (int ,int *) ;
 int passwd ;
 int stub1 () ;

int
__nss_compat_setpwent(void *retval, void *mdata, va_list ap)
{

 SET_TERMINATOR(passwd, ((void*)0));
 ((int (*)(void))mdata)();
 return (NS_UNAVAIL);
}
