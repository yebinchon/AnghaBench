
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USE (void*) ;
 int * pcurrjob ;
 int * pholdjob ;

void
psavejob_cleanup(void *dummy)
{
    USE(dummy);
    pcurrjob = pholdjob;
    pholdjob = ((void*)0);
}
