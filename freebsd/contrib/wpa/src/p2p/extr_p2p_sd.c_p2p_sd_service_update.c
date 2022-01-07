
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {int srv_update_indic; } ;



void p2p_sd_service_update(struct p2p_data *p2p)
{
 p2p->srv_update_indic++;
}
