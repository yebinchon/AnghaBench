
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ies_len; int * ies; int * target_ap; int ft_action; } ;
union wpa_event_data {TYPE_1__ ft_ies; } ;
typedef int u8 ;
struct wpa_priv_interface {int dummy; } ;


 int ETH_ALEN ;
 int PRIVSEP_EVENT_FT_RESPONSE ;
 int os_free (int *) ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int *,int) ;
 int wpa_priv_send_event (struct wpa_priv_interface*,int ,int *,size_t) ;

__attribute__((used)) static void wpa_priv_send_ft_response(struct wpa_priv_interface *iface,
          union wpa_event_data *data)
{
 size_t len;
 u8 *buf, *pos;

 if (data == ((void*)0) || data->ft_ies.ies == ((void*)0))
  return;

 len = sizeof(int) + ETH_ALEN + data->ft_ies.ies_len;
 buf = os_malloc(len);
 if (buf == ((void*)0))
  return;

 pos = buf;
 os_memcpy(pos, &data->ft_ies.ft_action, sizeof(int));
 pos += sizeof(int);
 os_memcpy(pos, data->ft_ies.target_ap, ETH_ALEN);
 pos += ETH_ALEN;
 os_memcpy(pos, data->ft_ies.ies, data->ft_ies.ies_len);

 wpa_priv_send_event(iface, PRIVSEP_EVENT_FT_RESPONSE, buf, len);

 os_free(buf);

}
