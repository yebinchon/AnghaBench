
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct p2p_data {void* override_pref_channel; void* override_pref_op_class; } ;



void p2p_set_override_pref_op_chan(struct p2p_data *p2p, u8 op_class,
       u8 chan)
{
 p2p->override_pref_op_class = op_class;
 p2p->override_pref_channel = chan;
}
