
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* __bits; } ;
typedef TYPE_1__ sigset_t ;


 int __libc_sigsuspend (TYPE_1__*) ;
 int sigemptyset (TYPE_1__*) ;

int
sigpause(int mask)
{
 sigset_t set;

 sigemptyset(&set);
 set.__bits[0] = mask;
 return (__libc_sigsuspend(&set));
}
