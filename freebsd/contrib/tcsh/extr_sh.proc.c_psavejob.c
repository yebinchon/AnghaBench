
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * pcurrjob ;
 int * pholdjob ;

void
psavejob(void)
{
    pholdjob = pcurrjob;
    pcurrjob = ((void*)0);
}
