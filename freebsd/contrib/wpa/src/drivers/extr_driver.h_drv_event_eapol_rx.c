
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t data_len; int const* data; int const* src; } ;
union wpa_event_data {TYPE_1__ eapol_rx; } ;
typedef int u8 ;
typedef int event ;


 int EVENT_EAPOL_RX ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int wpa_supplicant_event (void*,int ,union wpa_event_data*) ;

__attribute__((used)) static inline void drv_event_eapol_rx(void *ctx, const u8 *src, const u8 *data,
          size_t data_len)
{
 union wpa_event_data event;
 os_memset(&event, 0, sizeof(event));
 event.eapol_rx.src = src;
 event.eapol_rx.data = data;
 event.eapol_rx.data_len = data_len;
 wpa_supplicant_event(ctx, EVENT_EAPOL_RX, &event);
}
