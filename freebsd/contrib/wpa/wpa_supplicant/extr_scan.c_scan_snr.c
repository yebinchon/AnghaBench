
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_scan_res {int flags; scalar_t__ level; scalar_t__ snr; scalar_t__ noise; int freq; } ;


 scalar_t__ DEFAULT_NOISE_FLOOR_2GHZ ;
 scalar_t__ DEFAULT_NOISE_FLOOR_5GHZ ;
 scalar_t__ IS_5GHZ (int ) ;
 int WPA_SCAN_LEVEL_DBM ;
 int WPA_SCAN_NOISE_INVALID ;

void scan_snr(struct wpa_scan_res *res)
{
 if (res->flags & WPA_SCAN_NOISE_INVALID) {
  res->noise = IS_5GHZ(res->freq) ?
   DEFAULT_NOISE_FLOOR_5GHZ :
   DEFAULT_NOISE_FLOOR_2GHZ;
 }

 if (res->flags & WPA_SCAN_LEVEL_DBM) {
  res->snr = res->level - res->noise;
 } else {


  res->snr = res->level;
 }
}
