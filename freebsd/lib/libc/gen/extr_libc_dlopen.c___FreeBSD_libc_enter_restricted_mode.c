
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __libc_restricted_mode ;

void
__FreeBSD_libc_enter_restricted_mode(void)
{

 __libc_restricted_mode = 1;
}
