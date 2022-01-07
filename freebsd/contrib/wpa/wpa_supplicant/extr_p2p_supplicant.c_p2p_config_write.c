
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* p2pdev; } ;
struct TYPE_4__ {scalar_t__ update_config; } ;
struct TYPE_3__ {TYPE_2__* conf; int confname; } ;


 int MSG_DEBUG ;
 scalar_t__ wpa_config_write (int ,TYPE_2__*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void p2p_config_write(struct wpa_supplicant *wpa_s)
{

 if (wpa_s->p2pdev->conf->update_config &&
     wpa_config_write(wpa_s->p2pdev->confname, wpa_s->p2pdev->conf))
  wpa_printf(MSG_DEBUG, "P2P: Failed to update configuration");

}
