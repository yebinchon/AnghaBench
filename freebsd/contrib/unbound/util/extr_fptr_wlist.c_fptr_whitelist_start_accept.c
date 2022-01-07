
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void worker_start_accept (void*) ;

int fptr_whitelist_start_accept(void (*fptr)(void*))
{
 if(fptr == &worker_start_accept) return 1;
 return 0;
}
