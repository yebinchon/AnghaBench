
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void bgscan_simple_notify_beacon_loss(void *priv)
{
 wpa_printf(MSG_DEBUG, "bgscan simple: beacon loss");

}
