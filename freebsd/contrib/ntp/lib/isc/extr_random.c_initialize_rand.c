
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int getpid () ;
 int srand (unsigned int) ;
 unsigned int time (int *) ;

__attribute__((used)) static void
initialize_rand(void)
{

 unsigned int pid = getpid();





 pid = ((pid << 16) & 0xffff0000) | ((pid >> 16) & 0xffff);

 srand(time(((void*)0)) ^ pid);

}
