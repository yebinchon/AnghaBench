
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct radius_das_attrs {scalar_t__ nas_identifier_len; scalar_t__ nas_ipv6_addr; scalar_t__ nas_ip_addr; scalar_t__ nas_identifier; } ;
struct hostapd_data {TYPE_3__* conf; } ;
struct TYPE_4__ {int v6; int v4; } ;
struct TYPE_5__ {scalar_t__ af; TYPE_1__ u; } ;
struct TYPE_6__ {TYPE_2__ own_ip_addr; int * nas_identifier; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int MSG_DEBUG ;
 scalar_t__ os_memcmp (int *,scalar_t__,int) ;
 scalar_t__ os_strlen (int *) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int hostapd_das_nas_mismatch(struct hostapd_data *hapd,
        struct radius_das_attrs *attr)
{
 if (attr->nas_identifier &&
     (!hapd->conf->nas_identifier ||
      os_strlen(hapd->conf->nas_identifier) !=
      attr->nas_identifier_len ||
      os_memcmp(hapd->conf->nas_identifier, attr->nas_identifier,
         attr->nas_identifier_len) != 0)) {
  wpa_printf(MSG_DEBUG, "RADIUS DAS: NAS-Identifier mismatch");
  return 1;
 }

 if (attr->nas_ip_addr &&
     (hapd->conf->own_ip_addr.af != AF_INET ||
      os_memcmp(&hapd->conf->own_ip_addr.u.v4, attr->nas_ip_addr, 4) !=
      0)) {
  wpa_printf(MSG_DEBUG, "RADIUS DAS: NAS-IP-Address mismatch");
  return 1;
 }
 return 0;
}
