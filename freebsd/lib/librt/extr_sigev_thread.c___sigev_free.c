
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigev_node {int sn_attr; } ;


 int _pthread_attr_destroy (int *) ;
 int free (struct sigev_node*) ;

void
__sigev_free(struct sigev_node *sn)
{
 _pthread_attr_destroy(&sn->sn_attr);
 free(sn);
}
