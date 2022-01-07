
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union wpa_event_data {int pmkid_candidate; } ;
typedef int u8 ;
struct pmkid_candidate {int dummy; } ;
typedef int data ;


 int EVENT_PMKID_CANDIDATE ;
 int os_memcpy (int *,int *,size_t) ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int wpa_supplicant_event (void*,int ,union wpa_event_data*) ;

__attribute__((used)) static void wpa_driver_privsep_event_pmkid_candidate(void *ctx, u8 *buf,
           size_t len)
{
 union wpa_event_data data;

 if (len != sizeof(struct pmkid_candidate))
  return;

 os_memset(&data, 0, sizeof(data));
 os_memcpy(&data.pmkid_candidate, buf, len);
 wpa_supplicant_event(ctx, EVENT_PMKID_CANDIDATE, &data);
}
