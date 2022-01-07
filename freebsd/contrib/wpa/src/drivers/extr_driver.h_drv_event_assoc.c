
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reassoc; size_t req_ies_len; int const* addr; int const* req_ies; } ;
union wpa_event_data {TYPE_1__ assoc_info; } ;
typedef int u8 ;
typedef int event ;


 int EVENT_ASSOC ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int wpa_supplicant_event (void*,int ,union wpa_event_data*) ;

__attribute__((used)) static inline void drv_event_assoc(void *ctx, const u8 *addr, const u8 *ie,
       size_t ielen, int reassoc)
{
 union wpa_event_data event;
 os_memset(&event, 0, sizeof(event));
 event.assoc_info.reassoc = reassoc;
 event.assoc_info.req_ies = ie;
 event.assoc_info.req_ies_len = ielen;
 event.assoc_info.addr = addr;
 wpa_supplicant_event(ctx, EVENT_ASSOC, &event);
}
