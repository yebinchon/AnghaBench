
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_channel_data {int chan; } ;


 unsigned int ARRAY_SIZE (int*) ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static int dfs_is_chan_allowed(struct hostapd_channel_data *chan, int n_chans)
{




 int allowed_40[] = { 36, 44, 52, 60, 100, 108, 116, 124, 132, 149, 157,
        184, 192 };




 int allowed_80[] = { 36, 52, 100, 116, 132, 149 };




 int allowed_160[] = { 36, 100 };
 int *allowed = allowed_40;
 unsigned int i, allowed_no = 0;

 switch (n_chans) {
 case 2:
  allowed = allowed_40;
  allowed_no = ARRAY_SIZE(allowed_40);
  break;
 case 4:
  allowed = allowed_80;
  allowed_no = ARRAY_SIZE(allowed_80);
  break;
 case 8:
  allowed = allowed_160;
  allowed_no = ARRAY_SIZE(allowed_160);
  break;
 default:
  wpa_printf(MSG_DEBUG, "Unknown width for %d channels", n_chans);
  break;
 }

 for (i = 0; i < allowed_no; i++) {
  if (chan->chan == allowed[i])
   return 1;
 }

 return 0;
}
