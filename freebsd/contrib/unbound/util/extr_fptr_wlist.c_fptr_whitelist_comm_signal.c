
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void worker_sighandler (int,void*) ;

int
fptr_whitelist_comm_signal(void (*fptr)(int, void*))
{
 if(fptr == &worker_sighandler) return 1;
 return 0;
}
