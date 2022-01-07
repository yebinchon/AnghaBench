
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINUX_SIGRTMIN ;
 int SIGRTMIN ;

__attribute__((used)) static inline int
linux_to_bsd_rt_signal(int sig)
{

 return (SIGRTMIN + 1 + sig - LINUX_SIGRTMIN);
}
