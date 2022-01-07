
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_iface {TYPE_1__* conf; } ;
struct hostapd_channel_data {int chan; } ;
struct TYPE_4__ {int num; } ;
struct TYPE_3__ {TYPE_2__ acs_ch_list; } ;


 int freq_range_list_includes (TYPE_2__*,int ) ;

__attribute__((used)) static int is_in_chanlist(struct hostapd_iface *iface,
     struct hostapd_channel_data *chan)
{
 if (!iface->conf->acs_ch_list.num)
  return 1;

 return freq_range_list_includes(&iface->conf->acs_ch_list, chan->chan);
}
