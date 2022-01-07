
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_bss_anqp {int anqp_elems; } ;


 int ANQP_DUP (int ) ;
 int anqp_3gpp ;
 int capability_list ;
 int dl_list_init (int *) ;
 int domain_name ;
 int fils_realm_info ;
 int hs20_capability_list ;
 int hs20_connection_capability ;
 int hs20_operating_class ;
 int hs20_operator_friendly_name ;
 int hs20_operator_icon_metadata ;
 int hs20_osu_providers_list ;
 int hs20_osu_providers_nai_list ;
 int hs20_wan_metrics ;
 int ip_addr_type_availability ;
 int nai_realm ;
 int network_auth_type ;
 struct wpa_bss_anqp* os_zalloc (int) ;
 int roaming_consortium ;
 int venue_name ;

__attribute__((used)) static struct wpa_bss_anqp * wpa_bss_anqp_clone(struct wpa_bss_anqp *anqp)
{
 struct wpa_bss_anqp *n;

 n = os_zalloc(sizeof(*n));
 if (n == ((void*)0))
  return ((void*)0);
 return n;
}
