
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int state_func_t ;
typedef int blocked ;
typedef int block ;


 int death_single ;
 int revoke_ttys () ;
 int runshutdown () ;
 int sysctlbyname (char*,int*,size_t*,int*,int) ;

__attribute__((used)) static state_func_t
death(void)
{
 int block, blocked;
 size_t len;


 len = sizeof(blocked);
 block = 1;
 if (sysctlbyname("kern.suspend_blocked", &blocked, &len,
     &block, sizeof(block)) == -1)
  blocked = 0;







 revoke_ttys();


 runshutdown();


 if (!blocked)
  sysctlbyname("kern.suspend_blocked", ((void*)0), ((void*)0),
      &blocked, sizeof(blocked));

 return (state_func_t) death_single;
}
