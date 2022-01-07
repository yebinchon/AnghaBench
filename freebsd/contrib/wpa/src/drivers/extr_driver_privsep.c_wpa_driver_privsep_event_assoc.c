
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int req_ies_len; int * req_ies; } ;
union wpa_event_data {TYPE_1__ assoc_info; } ;
typedef int u8 ;
typedef enum wpa_event_type { ____Placeholder_wpa_event_type } wpa_event_type ;
typedef int data ;


 int os_memcpy (int*,int *,int) ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int wpa_supplicant_event (void*,int,union wpa_event_data*) ;

__attribute__((used)) static void wpa_driver_privsep_event_assoc(void *ctx,
        enum wpa_event_type event,
        u8 *buf, size_t len)
{
 union wpa_event_data data;
 int inc_data = 0;
 u8 *pos, *end;
 int ie_len;

 os_memset(&data, 0, sizeof(data));

 pos = buf;
 end = buf + len;

 if (end - pos < (int) sizeof(int))
  return;
 os_memcpy(&ie_len, pos, sizeof(int));
 pos += sizeof(int);
 if (ie_len < 0 || ie_len > end - pos)
  return;
 if (ie_len) {
  data.assoc_info.req_ies = pos;
  data.assoc_info.req_ies_len = ie_len;
  pos += ie_len;
  inc_data = 1;
 }

 wpa_supplicant_event(ctx, event, inc_data ? &data : ((void*)0));
}
