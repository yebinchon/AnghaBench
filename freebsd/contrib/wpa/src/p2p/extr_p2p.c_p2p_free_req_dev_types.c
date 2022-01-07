
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {int * req_dev_types; scalar_t__ num_req_dev_types; } ;


 int os_free (int *) ;

__attribute__((used)) static void p2p_free_req_dev_types(struct p2p_data *p2p)
{
 p2p->num_req_dev_types = 0;
 os_free(p2p->req_dev_types);
 p2p->req_dev_types = ((void*)0);
}
