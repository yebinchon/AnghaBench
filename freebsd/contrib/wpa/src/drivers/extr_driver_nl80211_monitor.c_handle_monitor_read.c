
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_nl80211_data {int ctx; } ;
struct ieee80211_radiotap_iterator {int this_arg_index; int* this_arg; int _max_length; } ;
typedef int s8 ;
typedef int le16 ;
typedef int buf ;


 int ENOENT ;




 int IEEE80211_RADIOTAP_F_FCS ;
 int IEEE80211_RADIOTAP_F_TX_FAIL ;



 int MSG_ERROR ;
 int MSG_INFO ;
 int errno ;
 int handle_frame (struct wpa_driver_nl80211_data*,unsigned char*,int,int,int) ;
 int handle_tx_callback (int ,unsigned char*,int,int) ;
 scalar_t__ ieee80211_radiotap_iterator_init (struct ieee80211_radiotap_iterator*,void*,int,int *) ;
 int ieee80211_radiotap_iterator_next (struct ieee80211_radiotap_iterator*) ;
 int le_to_host16 (int ) ;
 int recv (int,unsigned char*,int,int ) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void handle_monitor_read(int sock, void *eloop_ctx, void *sock_ctx)
{
 struct wpa_driver_nl80211_data *drv = eloop_ctx;
 int len;
 unsigned char buf[3000];
 struct ieee80211_radiotap_iterator iter;
 int ret;
 int datarate = 0, ssi_signal = 0;
 int injected = 0, failed = 0, rxflags = 0;

 len = recv(sock, buf, sizeof(buf), 0);
 if (len < 0) {
  wpa_printf(MSG_ERROR, "nl80211: Monitor socket recv failed: %s",
      strerror(errno));
  return;
 }

 if (ieee80211_radiotap_iterator_init(&iter, (void *) buf, len, ((void*)0))) {
  wpa_printf(MSG_INFO, "nl80211: received invalid radiotap frame");
  return;
 }

 while (1) {
  ret = ieee80211_radiotap_iterator_next(&iter);
  if (ret == -ENOENT)
   break;
  if (ret) {
   wpa_printf(MSG_INFO, "nl80211: received invalid radiotap frame (%d)",
       ret);
   return;
  }
  switch (iter.this_arg_index) {
  case 131:
   if (*iter.this_arg & IEEE80211_RADIOTAP_F_FCS)
    len -= 4;
   break;
  case 129:
   rxflags = 1;
   break;
  case 128:
   injected = 1;
   failed = le_to_host16((*(le16 *) iter.this_arg)) &
     IEEE80211_RADIOTAP_F_TX_FAIL;
   break;
  case 133:
   break;
  case 134:

   break;
  case 130:
   datarate = *iter.this_arg * 5;
   break;
  case 132:
   ssi_signal = (s8) *iter.this_arg;
   break;
  }
 }

 if (rxflags && injected)
  return;

 if (!injected)
  handle_frame(drv, buf + iter._max_length,
        len - iter._max_length, datarate, ssi_signal);
 else
  handle_tx_callback(drv->ctx, buf + iter._max_length,
       len - iter._max_length, !failed);
}
