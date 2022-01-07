
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __libc_restricted_mode ;
 int _rtld_error (char*) ;
 void* dlopen (char const*,int) ;

void *
libc_dlopen(const char *path, int mode)
{

 if (__libc_restricted_mode) {
  _rtld_error("Service unavailable -- libc in restricted mode");
  return (((void*)0));
 }
 return (dlopen(path, mode));
}
