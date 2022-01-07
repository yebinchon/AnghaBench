
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int * dpp_pkex; int dpp; } ;
struct dpp_bootstrap_info {int dummy; } ;


 struct dpp_bootstrap_info* dpp_pkex_finish (int ,int *,int const*,unsigned int) ;

__attribute__((used)) static struct dpp_bootstrap_info *
wpas_dpp_pkex_finish(struct wpa_supplicant *wpa_s, const u8 *peer,
       unsigned int freq)
{
 struct dpp_bootstrap_info *bi;

 bi = dpp_pkex_finish(wpa_s->dpp, wpa_s->dpp_pkex, peer, freq);
 if (!bi)
  return ((void*)0);
 wpa_s->dpp_pkex = ((void*)0);
 return bi;
}
