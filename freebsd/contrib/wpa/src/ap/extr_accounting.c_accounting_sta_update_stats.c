
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {scalar_t__ last_rx_bytes_lo; scalar_t__ last_tx_bytes_lo; int last_tx_bytes_hi; int last_rx_bytes_hi; int addr; } ;
struct hostapd_data {int dummy; } ;
struct hostap_sta_driver_data {scalar_t__ rx_bytes; scalar_t__ tx_bytes; int bytes_64bit; } ;


 int HOSTAPD_LEVEL_DEBUG ;
 int HOSTAPD_MODULE_RADIUS ;
 scalar_t__ hostapd_drv_read_sta_data (struct hostapd_data*,struct hostap_sta_driver_data*,int ) ;
 int hostapd_logger (struct hostapd_data*,int ,int ,int ,char*,scalar_t__,int ,scalar_t__,scalar_t__,int ,scalar_t__,int ) ;

__attribute__((used)) static int accounting_sta_update_stats(struct hostapd_data *hapd,
           struct sta_info *sta,
           struct hostap_sta_driver_data *data)
{
 if (hostapd_drv_read_sta_data(hapd, data, sta->addr))
  return -1;

 if (!data->bytes_64bit) {

  if (sta->last_rx_bytes_lo > data->rx_bytes)
   sta->last_rx_bytes_hi++;
  sta->last_rx_bytes_lo = data->rx_bytes;

  if (sta->last_tx_bytes_lo > data->tx_bytes)
   sta->last_tx_bytes_hi++;
  sta->last_tx_bytes_lo = data->tx_bytes;
 }

 hostapd_logger(hapd, sta->addr, HOSTAPD_MODULE_RADIUS,
         HOSTAPD_LEVEL_DEBUG,
         "updated TX/RX stats: rx_bytes=%llu [%u:%u] tx_bytes=%llu [%u:%u] bytes_64bit=%d",
         data->rx_bytes, sta->last_rx_bytes_hi,
         sta->last_rx_bytes_lo,
         data->tx_bytes, sta->last_tx_bytes_hi,
         sta->last_tx_bytes_lo,
         data->bytes_64bit);

 return 0;
}
