
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef int txt ;
struct p2p_message {scalar_t__ pref_freq_list_len; } ;
struct p2p_device {int flags; scalar_t__ oper_freq; } ;
struct p2p_data {TYPE_1__* cfg; int channels; void* op_channel; void* op_reg_class; } ;
struct p2p_channels {int dummy; } ;
struct TYPE_2__ {int channels; int cli_channels; int cb_ctx; scalar_t__ (* get_pref_freq_list ) (int ,int,unsigned int*,unsigned int*) ;scalar_t__ cfg_op_channel; scalar_t__ num_pref_chan; } ;


 int P2P_DEV_FORCE_FREQ ;
 int P2P_MAX_PREF_CHANNELS ;
 int os_memcpy (int *,int *,int) ;
 int os_memmove (unsigned int*,unsigned int*,unsigned int) ;
 int os_snprintf (char*,int,char*,unsigned int) ;
 scalar_t__ os_snprintf_error (int,int) ;
 int p2p_channels_includes (int *,void*,void*) ;
 int p2p_check_pref_chan_no_recv (struct p2p_data*,int,struct p2p_device*,struct p2p_message*,unsigned int*,unsigned int) ;
 int p2p_check_pref_chan_recv (struct p2p_data*,int,struct p2p_device*,struct p2p_message*,unsigned int*,unsigned int) ;
 int p2p_dbg (struct p2p_data*,char*,unsigned int,...) ;
 scalar_t__ p2p_freq_to_channel (unsigned int,void**,void**) ;
 scalar_t__ stub1 (int ,int,unsigned int*,unsigned int*) ;

void p2p_check_pref_chan(struct p2p_data *p2p, int go,
    struct p2p_device *dev, struct p2p_message *msg)
{
 unsigned int freq_list[P2P_MAX_PREF_CHANNELS], size;
 unsigned int i;
 u8 op_class, op_channel;
 char txt[100], *pos, *end;
 int res;






 if (!p2p->cfg->get_pref_freq_list || p2p->cfg->num_pref_chan ||
     (dev->flags & P2P_DEV_FORCE_FREQ) || p2p->cfg->cfg_op_channel)
  return;


 size = P2P_MAX_PREF_CHANNELS;
 if (p2p->cfg->get_pref_freq_list(p2p->cfg->cb_ctx, go, &size,
      freq_list))
  return;

 i = 0;
 while (i < size) {
  if (p2p_freq_to_channel(freq_list[i], &op_class,
     &op_channel) < 0 ||
      (!p2p_channels_includes(&p2p->cfg->channels,
         op_class, op_channel) &&
       (go || !p2p_channels_includes(&p2p->cfg->cli_channels,
         op_class, op_channel)))) {
   p2p_dbg(p2p,
    "Ignore local driver frequency preference %u MHz since it is not acceptable for P2P use (go=%d)",
    freq_list[i], go);
   if (size - i - 1 > 0)
    os_memmove(&freq_list[i], &freq_list[i + 1],
        (size - i - 1) *
        sizeof(unsigned int));
   size--;
   continue;
  }


  i++;
 }

 pos = txt;
 end = pos + sizeof(txt);
 for (i = 0; i < size; i++) {
  res = os_snprintf(pos, end - pos, " %u", freq_list[i]);
  if (os_snprintf_error(end - pos, res))
   break;
  pos += res;
 }
 *pos = '\0';
 p2p_dbg(p2p, "Local driver frequency preference (size=%u):%s",
  size, txt);





 for (i = 0; i < size; i++) {
  if (freq_list[i] == (unsigned int) dev->oper_freq)
   break;
 }
 if (i != size &&
     p2p_freq_to_channel(freq_list[i], &op_class, &op_channel) == 0) {

  p2p->op_reg_class = op_class;
  p2p->op_channel = op_channel;
  os_memcpy(&p2p->channels, &p2p->cfg->channels,
     sizeof(struct p2p_channels));
  return;
 }

 p2p_dbg(p2p,
  "Peer operating channel preference: %d MHz is not in our preferred channel list",
  dev->oper_freq);





 if (msg->pref_freq_list_len == 0)
  p2p_check_pref_chan_no_recv(p2p, go, dev, msg, freq_list, size);
 else
  p2p_check_pref_chan_recv(p2p, go, dev, msg, freq_list, size);
}
