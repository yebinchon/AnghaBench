
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t ies_len; int * ies; int * target_ap; int ft_action; } ;
union wpa_event_data {TYPE_1__ ft_ies; } ;
typedef int u8 ;
typedef int data ;


 int ETH_ALEN ;
 int EVENT_FT_RESPONSE ;
 int os_memcpy (int *,int *,int) ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int wpa_supplicant_event (void*,int ,union wpa_event_data*) ;

__attribute__((used)) static void wpa_driver_privsep_event_ft_response(void *ctx, u8 *buf,
       size_t len)
{
 union wpa_event_data data;

 if (len < sizeof(int) + ETH_ALEN)
  return;

 os_memset(&data, 0, sizeof(data));
 os_memcpy(&data.ft_ies.ft_action, buf, sizeof(int));
 os_memcpy(data.ft_ies.target_ap, buf + sizeof(int), ETH_ALEN);
 data.ft_ies.ies = buf + sizeof(int) + ETH_ALEN;
 data.ft_ies.ies_len = len - sizeof(int) - ETH_ALEN;
 wpa_supplicant_event(ctx, EVENT_FT_RESPONSE, &data);
}
