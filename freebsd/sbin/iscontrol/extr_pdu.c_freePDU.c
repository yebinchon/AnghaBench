
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef union ipdu_u {int dummy; } ipdu_u ;
struct TYPE_3__ {scalar_t__ ds_len; scalar_t__ ds_size; scalar_t__ ahs_size; int * ds_addr; int * ahs_addr; int ipdu; } ;
typedef TYPE_1__ pdu_t ;


 int bzero (int *,int) ;
 int free (int *) ;

void
freePDU(pdu_t *pp)
{
     if(pp->ahs_size)
   free(pp->ahs_addr);
     if(pp->ds_size)
   free(pp->ds_addr);
     bzero(&pp->ipdu, sizeof(union ipdu_u));
     pp->ahs_addr = ((void*)0);
     pp->ds_addr = ((void*)0);
     pp->ahs_size = 0;
     pp->ds_size = pp->ds_len = 0;
}
