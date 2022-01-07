
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sta_info {TYPE_1__* pending_eapol_rx; } ;
struct TYPE_3__ {int rx_time; int buf; } ;


 int os_free (TYPE_1__*) ;
 int os_get_reltime (int *) ;
 TYPE_1__* os_malloc (int) ;
 int wpabuf_alloc_copy (int const*,size_t) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void ieee802_1x_save_eapol(struct sta_info *sta, const u8 *buf,
      size_t len)
{
 if (sta->pending_eapol_rx) {
  wpabuf_free(sta->pending_eapol_rx->buf);
 } else {
  sta->pending_eapol_rx =
   os_malloc(sizeof(*sta->pending_eapol_rx));
  if (!sta->pending_eapol_rx)
   return;
 }

 sta->pending_eapol_rx->buf = wpabuf_alloc_copy(buf, len);
 if (!sta->pending_eapol_rx->buf) {
  os_free(sta->pending_eapol_rx);
  sta->pending_eapol_rx = ((void*)0);
  return;
 }

 os_get_reltime(&sta->pending_eapol_rx->rx_time);
}
