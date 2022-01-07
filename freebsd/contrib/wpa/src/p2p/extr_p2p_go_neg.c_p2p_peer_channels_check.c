
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct p2p_reg_class {int channels; int channel; int reg_class; } ;
struct p2p_channels {size_t reg_classes; struct p2p_reg_class* reg_class; } ;
struct p2p_device {struct p2p_channels channels; int country; } ;
struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {int * country; } ;


 int MSG_DEBUG ;
 size_t P2P_MAX_REG_CLASSES ;
 int P2P_MAX_REG_CLASS_CHANNELS ;
 scalar_t__ os_memcmp (int const*,int *,int) ;
 int os_memcpy (int ,int const*,int) ;
 int os_memset (struct p2p_channels*,int ,int) ;
 int p2p_channels_intersect (struct p2p_channels*,struct p2p_channels*,struct p2p_channels*) ;
 int p2p_dbg (struct p2p_data*,char*,int,int,int) ;
 int p2p_info (struct p2p_data*,char*,...) ;
 int wpa_hexdump_ascii (int ,char*,int const*,int) ;

int p2p_peer_channels_check(struct p2p_data *p2p, struct p2p_channels *own,
       struct p2p_device *dev,
       const u8 *channel_list, size_t channel_list_len)
{
 const u8 *pos, *end;
 struct p2p_channels *ch;
 u8 channels;
 struct p2p_channels intersection;

 ch = &dev->channels;
 os_memset(ch, 0, sizeof(*ch));
 pos = channel_list;
 end = channel_list + channel_list_len;

 if (end - pos < 3)
  return -1;
 os_memcpy(dev->country, pos, 3);
 wpa_hexdump_ascii(MSG_DEBUG, "P2P: Peer country", pos, 3);
 if (pos[2] != 0x04 && os_memcmp(pos, p2p->cfg->country, 2) != 0) {
  p2p_info(p2p, "Mismatching country (ours=%c%c peer's=%c%c)",
   p2p->cfg->country[0], p2p->cfg->country[1],
   pos[0], pos[1]);
  return -1;
 }
 pos += 3;

 while (end - pos > 2) {
  struct p2p_reg_class *cl = &ch->reg_class[ch->reg_classes];
  cl->reg_class = *pos++;
  channels = *pos++;
  if (channels > end - pos) {
   p2p_info(p2p, "Invalid peer Channel List");
   return -1;
  }
  cl->channels = channels > P2P_MAX_REG_CLASS_CHANNELS ?
   P2P_MAX_REG_CLASS_CHANNELS : channels;
  os_memcpy(cl->channel, pos, cl->channels);
  pos += channels;
  ch->reg_classes++;
  if (ch->reg_classes == P2P_MAX_REG_CLASSES)
   break;
 }

 p2p_channels_intersect(own, &dev->channels, &intersection);
 p2p_dbg(p2p, "Own reg_classes %d peer reg_classes %d intersection reg_classes %d",
  (int) own->reg_classes,
  (int) dev->channels.reg_classes,
  (int) intersection.reg_classes);
 if (intersection.reg_classes == 0) {
  p2p_info(p2p, "No common channels found");
  return -1;
 }
 return 0;
}
