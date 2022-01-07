
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_1__* non_pref_chan; } ;
struct TYPE_2__ {int reason; int preference; int chan; int oper_class; } ;


 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static void wpas_mbo_non_pref_chan_attr_body(struct wpa_supplicant *wpa_s,
          struct wpabuf *mbo,
          u8 start, u8 end)
{
 u8 i;

 wpabuf_put_u8(mbo, wpa_s->non_pref_chan[start].oper_class);

 for (i = start; i < end; i++)
  wpabuf_put_u8(mbo, wpa_s->non_pref_chan[i].chan);

 wpabuf_put_u8(mbo, wpa_s->non_pref_chan[start].preference);
 wpabuf_put_u8(mbo, wpa_s->non_pref_chan[start].reason);
}
