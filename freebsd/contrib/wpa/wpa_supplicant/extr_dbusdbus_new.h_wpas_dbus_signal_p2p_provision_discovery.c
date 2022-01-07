
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpa_supplicant {int dummy; } ;
typedef enum p2p_prov_disc_status { ____Placeholder_p2p_prov_disc_status } p2p_prov_disc_status ;



__attribute__((used)) static inline void
wpas_dbus_signal_p2p_provision_discovery(struct wpa_supplicant *wpa_s,
      const u8 *dev_addr, int request,
      enum p2p_prov_disc_status status,
      u16 config_methods,
      unsigned int generated_pin)
{
}
