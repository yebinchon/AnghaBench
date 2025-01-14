
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wpabuf {int dummy; } ;
struct multi_band_ie {scalar_t__ eid; int len; scalar_t__ band_id; } ;


 int MSG_INFO ;
 scalar_t__ WLAN_EID_MULTI_BAND ;
 scalar_t__ const* fst_mbie_get_peer_addr (struct multi_band_ie const*) ;
 int fst_printf (int ,char*,scalar_t__) ;
 scalar_t__* wpabuf_head (struct wpabuf const*) ;
 size_t wpabuf_len (struct wpabuf const*) ;

__attribute__((used)) static const u8 * fst_mbie_get_peer_addr_for_band(const struct wpabuf *mbies,
        u8 band_id)
{
 const u8 *p = wpabuf_head(mbies);
 size_t s = wpabuf_len(mbies);

 while (s >= 2) {
  const struct multi_band_ie *mbie =
   (const struct multi_band_ie *) p;

  if (mbie->eid != WLAN_EID_MULTI_BAND) {
   fst_printf(MSG_INFO, "unexpected eid %d", mbie->eid);
   return ((void*)0);
  }

  if (mbie->len < sizeof(*mbie) - 2 || mbie->len > s - 2) {
   fst_printf(MSG_INFO, "invalid mbie len %d",
       mbie->len);
   return ((void*)0);
  }

  if (mbie->band_id == band_id)
   return fst_mbie_get_peer_addr(mbie);

  p += 2 + mbie->len;
  s -= 2 + mbie->len;
 }

 fst_printf(MSG_INFO, "mbie doesn't contain band %d", band_id);
 return ((void*)0);
}
