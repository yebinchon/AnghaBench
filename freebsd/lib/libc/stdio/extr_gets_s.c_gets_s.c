
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rsize_t ;


 int EINVAL ;
 int FLOCKFILE_CANCELSAFE (int ) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 scalar_t__ RSIZE_MAX ;
 int __throw_constraint_handler_s (char*,int ) ;
 char* _gets_s (char*,scalar_t__) ;
 int stdin ;

char *
gets_s(char *buf, rsize_t n)
{
 char *ret;
 if (buf == ((void*)0)) {
  __throw_constraint_handler_s("gets_s : str is NULL", EINVAL);
  return(((void*)0));
 } else if (n > RSIZE_MAX) {
  __throw_constraint_handler_s("gets_s : n > RSIZE_MAX",
   EINVAL);
  return(((void*)0));
 } else if (n == 0) {
  __throw_constraint_handler_s("gets_s : n == 0", EINVAL);
  return(((void*)0));
 }

 FLOCKFILE_CANCELSAFE(stdin);
 ret = _gets_s(buf, n);
 FUNLOCKFILE_CANCELSAFE();
 return (ret);
}
