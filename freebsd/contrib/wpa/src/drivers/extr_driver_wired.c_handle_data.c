
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * addr; } ;
union wpa_event_data {TYPE_1__ new_sta; } ;
typedef int u8 ;
struct ieee8023_hdr {int ethertype; int * src; } ;
typedef int event ;



 int EVENT_NEW_STA ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int drv_event_eapol_rx (void*,int *,int *,size_t) ;
 int ntohs (int ) ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_supplicant_event (void*,int ,union wpa_event_data*) ;

__attribute__((used)) static void handle_data(void *ctx, unsigned char *buf, size_t len)
{
}
