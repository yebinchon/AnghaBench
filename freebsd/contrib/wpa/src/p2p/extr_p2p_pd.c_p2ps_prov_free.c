
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {int * p2ps_prov; } ;


 int os_free (int *) ;

void p2ps_prov_free(struct p2p_data *p2p)
{
 os_free(p2p->p2ps_prov);
 p2p->p2ps_prov = ((void*)0);
}
