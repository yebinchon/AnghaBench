
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2ps_advertisement {int dummy; } ;
struct p2p_data {struct p2ps_advertisement* p2ps_adv_list; } ;



struct p2ps_advertisement * p2p_get_p2ps_adv_list(struct p2p_data *p2p)
{
 return p2p ? p2p->p2ps_adv_list : ((void*)0);
}
