
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct p2p_message {unsigned int channel_list_len; scalar_t__* channel_list; } ;
struct p2p_device {int dummy; } ;
struct p2p_data {TYPE_1__* cfg; int channels; scalar_t__ op_channel; scalar_t__ op_reg_class; } ;
struct p2p_channels {int dummy; } ;
struct TYPE_2__ {int channels; } ;


 int os_memcpy (int *,int *,int) ;
 int p2p_dbg (struct p2p_data*,char*,...) ;
 scalar_t__ p2p_freq_to_channel (unsigned int,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static void p2p_check_pref_chan_no_recv(struct p2p_data *p2p, int go,
     struct p2p_device *dev,
     struct p2p_message *msg,
     unsigned freq_list[], unsigned int size)
{
 u8 op_class, op_channel;
 unsigned int oper_freq = 0, i, j;
 int found = 0;

 p2p_dbg(p2p,
  "Peer didn't provide a preferred frequency list, see if any of our preferred channels are supported by peer device");





 for (i = 0; i < size && !found; i++) {

  oper_freq = freq_list[i];
  if (p2p_freq_to_channel(oper_freq, &op_class,
     &op_channel) < 0)
   continue;
  for (j = 0; j < msg->channel_list_len; j++) {

   if (op_channel != msg->channel_list[j])
    continue;

   p2p->op_reg_class = op_class;
   p2p->op_channel = op_channel;
   os_memcpy(&p2p->channels, &p2p->cfg->channels,
      sizeof(struct p2p_channels));
   found = 1;
   break;
  }
 }

 if (found) {
  p2p_dbg(p2p,
   "Freq %d MHz is a preferred channel and is also supported by peer, use it as the operating channel",
   oper_freq);
 } else {
  p2p_dbg(p2p,
   "None of our preferred channels are supported by peer!");
 }
}
