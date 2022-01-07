
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int const* addr; } ;
union wpa_event_data {TYPE_1__ disassoc_info; } ;
typedef int u8 ;
typedef int event ;


 int EVENT_DISASSOC ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int wpa_supplicant_event (void*,int ,union wpa_event_data*) ;

__attribute__((used)) static inline void drv_event_disassoc(void *ctx, const u8 *addr)
{
 union wpa_event_data event;
 os_memset(&event, 0, sizeof(event));
 event.disassoc_info.addr = addr;
 wpa_supplicant_event(ctx, EVENT_DISASSOC, &event);
}
