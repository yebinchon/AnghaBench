
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wpa_supplicant {TYPE_1__* conf; } ;
struct ieee802_1x_hdr {int length; int type; int version; } ;
struct TYPE_2__ {int eapol_version; } ;


 int htons (int) ;
 struct ieee802_1x_hdr* os_malloc (size_t) ;
 int os_memcpy (struct ieee802_1x_hdr*,void const*,int) ;
 int os_memset (struct ieee802_1x_hdr*,int ,int) ;

__attribute__((used)) static u8 * wpa_alloc_eapol(const struct wpa_supplicant *wpa_s, u8 type,
       const void *data, u16 data_len,
       size_t *msg_len, void **data_pos)
{
 struct ieee802_1x_hdr *hdr;

 *msg_len = sizeof(*hdr) + data_len;
 hdr = os_malloc(*msg_len);
 if (hdr == ((void*)0))
  return ((void*)0);

 hdr->version = wpa_s->conf->eapol_version;
 hdr->type = type;
 hdr->length = htons(data_len);

 if (data)
  os_memcpy(hdr + 1, data, data_len);
 else
  os_memset(hdr + 1, 0, data_len);

 if (data_pos)
  *data_pos = hdr + 1;

 return (u8 *) hdr;
}
