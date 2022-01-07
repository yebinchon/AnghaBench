
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int access_network_type; int hessid; int venue_type; int venue_group; scalar_t__ venue_info_set; scalar_t__ uesa; scalar_t__ esr; scalar_t__ asra; scalar_t__ internet; int interworking; } ;


 int ETH_ALEN ;
 int INTERWORKING_ANO_ASRA ;
 int INTERWORKING_ANO_ESR ;
 int INTERWORKING_ANO_INTERNET ;
 int INTERWORKING_ANO_UESA ;
 int WLAN_EID_INTERWORKING ;
 int is_zero_ether_addr (int ) ;
 int os_memcpy (int*,int ,int ) ;

u8 * hostapd_eid_interworking(struct hostapd_data *hapd, u8 *eid)
{
 u8 *pos = eid;
 return pos;
}
