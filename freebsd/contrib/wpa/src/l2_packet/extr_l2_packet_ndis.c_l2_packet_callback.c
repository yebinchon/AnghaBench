
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l2_packet_data {int rx_written; int rx_callback_ctx; int (* rx_callback ) (int ,int const*,int const*,size_t) ;scalar_t__ l2_hdr; scalar_t__ rx_buf; } ;
struct l2_ethhdr {int * h_source; } ;


 int MSG_DEBUG ;
 int l2_ndisuio_start_read (struct l2_packet_data*,int) ;
 int stub1 (int ,int const*,int const*,size_t) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static void l2_packet_callback(struct l2_packet_data *l2)
{
 const u8 *rx_buf, *rx_src;
 size_t rx_len;
 struct l2_ethhdr *ethhdr = (struct l2_ethhdr *) l2->rx_buf;

 wpa_printf(MSG_DEBUG, "L2(NDISUIO): Read %d bytes",
     (int) l2->rx_written);

 if (l2->l2_hdr || l2->rx_written < sizeof(*ethhdr)) {
  rx_buf = (u8 *) ethhdr;
  rx_len = l2->rx_written;
 } else {
  rx_buf = (u8 *) (ethhdr + 1);
  rx_len = l2->rx_written - sizeof(*ethhdr);
 }
 rx_src = ethhdr->h_source;

 l2->rx_callback(l2->rx_callback_ctx, rx_src, rx_buf, rx_len);

 l2_ndisuio_start_read(l2, 1);

}
