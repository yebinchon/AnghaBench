
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct wpa_supplicant {int dummy; } ;
struct roaming_partner {int exact_match; int fqdn; int country; int priority; } ;


 int MSG_DEBUG ;
 int domain_name_list_contains (struct wpabuf*,int ,int ) ;
 int wpa_hexdump_ascii (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*,int ,int ,int ,int ) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static int roaming_partner_match(struct wpa_supplicant *wpa_s,
     struct roaming_partner *partner,
     struct wpabuf *domain_names)
{
 wpa_printf(MSG_DEBUG, "Interworking: Comparing roaming_partner info fqdn='%s' exact_match=%d priority=%u country='%s'",
     partner->fqdn, partner->exact_match, partner->priority,
     partner->country);
 wpa_hexdump_ascii(MSG_DEBUG, "Interworking: Domain names",
     wpabuf_head(domain_names),
     wpabuf_len(domain_names));
 if (!domain_name_list_contains(domain_names, partner->fqdn,
           partner->exact_match))
  return 0;

 return 1;
}
