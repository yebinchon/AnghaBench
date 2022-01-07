
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {int cfg_op_channel; void* op_channel; void* op_reg_class; } ;


 scalar_t__ p2p_channel_to_freq (void*,void*) ;
 int p2p_dbg (struct p2p_data*,char*,void*,void*) ;

int p2p_set_oper_channel(struct p2p_data *p2p, u8 op_reg_class, u8 op_channel,
    int cfg_op_channel)
{
 if (p2p_channel_to_freq(op_reg_class, op_channel) < 0)
  return -1;

 p2p_dbg(p2p, "Set Operating channel: reg_class %u channel %u",
  op_reg_class, op_channel);
 p2p->cfg->op_reg_class = op_reg_class;
 p2p->cfg->op_channel = op_channel;
 p2p->cfg->cfg_op_channel = cfg_op_channel;
 return 0;
}
