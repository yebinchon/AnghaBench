
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t data_len; int ack; int * data; int dst; int stype; int type; } ;
union wpa_event_data {TYPE_1__ tx_status; } ;
typedef int u8 ;
typedef int u16 ;
struct ieee80211_hdr {int addr1; int frame_control; } ;
typedef int event ;


 int EVENT_TX_STATUS ;
 int WLAN_FC_GET_STYPE (int ) ;
 int WLAN_FC_GET_TYPE (int ) ;
 int le_to_host16 (int ) ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int wpa_supplicant_event (void*,int ,union wpa_event_data*) ;

__attribute__((used)) static void handle_tx_callback(void *ctx, u8 *buf, size_t len, int ok)
{
 struct ieee80211_hdr *hdr;
 u16 fc;
 union wpa_event_data event;

 hdr = (struct ieee80211_hdr *) buf;
 fc = le_to_host16(hdr->frame_control);

 os_memset(&event, 0, sizeof(event));
 event.tx_status.type = WLAN_FC_GET_TYPE(fc);
 event.tx_status.stype = WLAN_FC_GET_STYPE(fc);
 event.tx_status.dst = hdr->addr1;
 event.tx_status.data = buf;
 event.tx_status.data_len = len;
 event.tx_status.ack = ok;
 wpa_supplicant_event(ctx, EVENT_TX_STATUS, &event);
}
