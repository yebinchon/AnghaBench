
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct wpabuf {int dummy; } ;
struct mb_ies_info {size_t nof_ies; TYPE_1__* ies; } ;
struct TYPE_2__ {scalar_t__ ie_len; int ie; } ;


 scalar_t__ WLAN_EID_MULTI_BAND ;
 int WPA_ASSERT (int ) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_put_data (struct wpabuf*,int ,scalar_t__) ;
 int wpabuf_put_u8 (struct wpabuf*,scalar_t__) ;

struct wpabuf * mb_ies_by_info(struct mb_ies_info *info)
{
 struct wpabuf *mb_ies = ((void*)0);

 WPA_ASSERT(info != ((void*)0));

 if (info->nof_ies) {
  u8 i;
  size_t mb_ies_size = 0;

  for (i = 0; i < info->nof_ies; i++)
   mb_ies_size += 2 + info->ies[i].ie_len;

  mb_ies = wpabuf_alloc(mb_ies_size);
  if (mb_ies) {
   for (i = 0; i < info->nof_ies; i++) {
    wpabuf_put_u8(mb_ies, WLAN_EID_MULTI_BAND);
    wpabuf_put_u8(mb_ies, info->ies[i].ie_len);
    wpabuf_put_data(mb_ies,
      info->ies[i].ie,
      info->ies[i].ie_len);
   }
  }
 }

 return mb_ies;
}
