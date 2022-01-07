
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _exit (int) ;
 scalar_t__ getpid () ;
 scalar_t__ parent ;
 int sleep (int) ;
 int thread_survived ;

__attribute__((used)) static void *
print_pid(void *arg)
{
 sleep(3);

 thread_survived = 1;
 if (parent != getpid()) {
  _exit(1);
 }
 return ((void*)0);
}
