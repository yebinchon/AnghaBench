
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int unicast; } ;
union wpa_event_data {TYPE_1__ michael_mic_failure; } ;
typedef int u8 ;
typedef int data ;


 int EVENT_MICHAEL_MIC_FAILURE ;
 int os_memcpy (int *,int *,int) ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int wpa_supplicant_event (void*,int ,union wpa_event_data*) ;

__attribute__((used)) static void wpa_driver_privsep_event_michael_mic_failure(
 void *ctx, u8 *buf, size_t len)
{
 union wpa_event_data data;

 if (len != sizeof(int))
  return;

 os_memset(&data, 0, sizeof(data));
 os_memcpy(&data.michael_mic_failure.unicast, buf, sizeof(int));
 wpa_supplicant_event(ctx, EVENT_MICHAEL_MIC_FAILURE, &data);
}
