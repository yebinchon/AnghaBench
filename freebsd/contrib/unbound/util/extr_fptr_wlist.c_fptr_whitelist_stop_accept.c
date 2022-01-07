
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void worker_stop_accept (void*) ;

int fptr_whitelist_stop_accept(void (*fptr)(void*))
{
 if(fptr == &worker_stop_accept) return 1;
 return 0;
}
