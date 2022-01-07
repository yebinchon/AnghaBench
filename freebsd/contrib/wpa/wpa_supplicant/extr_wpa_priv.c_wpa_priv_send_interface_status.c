
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ievent; char* ifname; } ;
union wpa_event_data {TYPE_1__ interface_status; } ;
typedef int u8 ;
struct wpa_priv_interface {int dummy; } ;


 int PRIVSEP_EVENT_INTERFACE_STATUS ;
 int os_free (int *) ;
 int * os_malloc (int) ;
 int os_memcpy (int *,...) ;
 int wpa_priv_send_event (struct wpa_priv_interface*,int ,int *,int) ;

__attribute__((used)) static void wpa_priv_send_interface_status(struct wpa_priv_interface *iface,
        union wpa_event_data *data)
{
 int ievent;
 size_t len, maxlen;
 u8 *buf;
 char *ifname;

 if (data == ((void*)0))
  return;

 ievent = data->interface_status.ievent;
 maxlen = sizeof(data->interface_status.ifname);
 ifname = data->interface_status.ifname;
 for (len = 0; len < maxlen && ifname[len]; len++)
  ;

 buf = os_malloc(sizeof(int) + len);
 if (buf == ((void*)0))
  return;

 os_memcpy(buf, &ievent, sizeof(int));
 os_memcpy(buf + sizeof(int), ifname, len);

 wpa_priv_send_event(iface, PRIVSEP_EVENT_INTERFACE_STATUS,
       buf, sizeof(int) + len);

 os_free(buf);

}
