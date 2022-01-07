
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _pthread_exit_mask (void*,int *) ;

void
_Tthr_exit(void *status)
{
 _pthread_exit_mask(status, ((void*)0));
}
