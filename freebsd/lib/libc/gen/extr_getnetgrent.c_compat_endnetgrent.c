
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int NS_SUCCESS ;
 int _compat_clearstate () ;

__attribute__((used)) static int
compat_endnetgrent(void *retval, void *mdata, va_list ap)
{

 _compat_clearstate();
 return (NS_SUCCESS);
}
