
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {size_t ft_ies_len; int * ft_ies; int mobility_domain; scalar_t__ ft_used; } ;
struct wpa_supplicant {TYPE_1__ sme; } ;


 int MOBILITY_DOMAIN_ID_LEN ;
 int MSG_DEBUG ;
 int os_free (int *) ;
 int os_memcpy (int ,int const*,int ) ;
 int * os_memdup (int const*,size_t) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;

int sme_update_ft_ies(struct wpa_supplicant *wpa_s, const u8 *md,
        const u8 *ies, size_t ies_len)
{
 if (md == ((void*)0) || ies == ((void*)0)) {
  wpa_dbg(wpa_s, MSG_DEBUG, "SME: Remove mobility domain");
  os_free(wpa_s->sme.ft_ies);
  wpa_s->sme.ft_ies = ((void*)0);
  wpa_s->sme.ft_ies_len = 0;
  wpa_s->sme.ft_used = 0;
  return 0;
 }

 os_memcpy(wpa_s->sme.mobility_domain, md, MOBILITY_DOMAIN_ID_LEN);
 wpa_hexdump(MSG_DEBUG, "SME: FT IEs", ies, ies_len);
 os_free(wpa_s->sme.ft_ies);
 wpa_s->sme.ft_ies = os_memdup(ies, ies_len);
 if (wpa_s->sme.ft_ies == ((void*)0))
  return -1;
 wpa_s->sme.ft_ies_len = ies_len;
 return 0;
}
