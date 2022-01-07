
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * rda_procstat; } ;
typedef TYPE_1__ rd_agent_t ;


 int free (TYPE_1__*) ;
 int procstat_close (int *) ;

void
rd_delete(rd_agent_t *rdap)
{

 if (rdap->rda_procstat != ((void*)0))
  procstat_close(rdap->rda_procstat);
 free(rdap);
}
