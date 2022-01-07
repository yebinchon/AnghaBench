
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int EEXIST ;
 int EINPROGRESS ;
 int ENOENT ;
 int ENOTCONN ;
 int EXDEV ;
 void syscall_ret_l1d_flush () ;

__attribute__((used)) static void __inline
amd64_syscall_ret_flush_l1d_inline(int error)
{
 void (*p)(void);

 if (error != 0 && error != EEXIST && error != EAGAIN &&
     error != EXDEV && error != ENOENT && error != ENOTCONN &&
     error != EINPROGRESS) {
  p = syscall_ret_l1d_flush;
  if (p != ((void*)0))
   p();
 }
}
