
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 size_t MBO_ATTR_ID_NON_PREF_CHAN_REPORT ;
 int wpabuf_put_u8 (struct wpabuf*,size_t) ;

__attribute__((used)) static void wpas_mbo_non_pref_chan_attr_hdr(struct wpabuf *mbo, size_t size)
{
 wpabuf_put_u8(mbo, MBO_ATTR_ID_NON_PREF_CHAN_REPORT);
 wpabuf_put_u8(mbo, size);
}
