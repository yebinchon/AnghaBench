
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int __build_env () ;
 int __merge_environ () ;
 int __setenv (char const*,size_t,char const*,int) ;
 size_t __strleneq (char const*) ;
 int * envVars ;
 int errno ;

int
setenv(const char *name, const char *value, int overwrite)
{
 size_t nameLen;


 if (name == ((void*)0) || (nameLen = __strleneq(name)) == 0) {
  errno = EINVAL;
  return (-1);
 }


 if (__merge_environ() == -1 || (envVars == ((void*)0) && __build_env() == -1))
  return (-1);

 return (__setenv(name, nameLen, value, overwrite));
}
