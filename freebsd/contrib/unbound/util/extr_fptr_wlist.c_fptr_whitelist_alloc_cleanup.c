
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void worker_alloc_cleanup (void*) ;

int
fptr_whitelist_alloc_cleanup(void (*fptr)(void*))
{
 if(fptr == &worker_alloc_cleanup) return 1;
 return 0;
}
