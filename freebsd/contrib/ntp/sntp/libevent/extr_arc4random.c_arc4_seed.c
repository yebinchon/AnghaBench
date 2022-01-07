
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ arc4_seed_proc_sys_kernel_random_uuid () ;
 scalar_t__ arc4_seed_sysctl_bsd () ;
 scalar_t__ arc4_seed_sysctl_linux () ;
 scalar_t__ arc4_seed_urandom () ;
 scalar_t__ arc4_seed_win32 () ;
 int * arc4random_urandom_filename ;

__attribute__((used)) static int
arc4_seed(void)
{
 int ok = 0;
 return ok ? 0 : -1;
}
