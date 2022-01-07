
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kpause (char*,int,int,int *) ;
 int kthread_exit (int ) ;
 int testit ;

__attribute__((used)) static void
jointhread(void *arg)
{

 kpause("take5", 0, 1, ((void*)0));
 testit = 1;
 kthread_exit(0);
}
