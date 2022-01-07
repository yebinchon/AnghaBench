
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_registrar {int p2p_dev_addr; } ;
struct wps_data {int p2p_dev_addr; TYPE_1__* wps; } ;
struct TYPE_2__ {struct wps_registrar* registrar; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 scalar_t__ is_zero_ether_addr (int ) ;
 scalar_t__ os_memcmp (int ,int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_registrar_skip_overlap(struct wps_data *wps)
{
 return 0;
}
