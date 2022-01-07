
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {int state; } ;


 char const* p2p_state_txt (int ) ;

const char * p2p_get_state_txt(struct p2p_data *p2p)
{
 return p2p_state_txt(p2p->state);
}
