
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oper_class_map {scalar_t__ bw; } ;
struct oci_info {scalar_t__ freq; int sec_channel; int chanwidth; int op_class; int channel; } ;


 scalar_t__ BW40MINUS ;
 scalar_t__ BW40PLUS ;
 int MSG_INFO ;
 struct oper_class_map* get_oper_class (int *,int ) ;
 scalar_t__ ieee80211_chan_to_freq (int *,int ,int ) ;
 int oper_class_bw_to_int (struct oper_class_map const*) ;
 int wpa_printf (int ,char*,int ,...) ;

int ocv_derive_all_parameters(struct oci_info *oci)
{
 const struct oper_class_map *op_class_map;

 oci->freq = ieee80211_chan_to_freq(((void*)0), oci->op_class, oci->channel);
 if (oci->freq < 0) {
  wpa_printf(MSG_INFO,
      "Error interpreting OCI: unrecognized opclass/channel pair (%d/%d)",
      oci->op_class, oci->channel);
  return -1;
 }

 op_class_map = get_oper_class(((void*)0), oci->op_class);
 if (!op_class_map) {
  wpa_printf(MSG_INFO,
      "Error interpreting OCI: Unrecognized opclass (%d)",
      oci->op_class);
  return -1;
 }

 oci->chanwidth = oper_class_bw_to_int(op_class_map);
 oci->sec_channel = 0;
 if (op_class_map->bw == BW40PLUS)
  oci->sec_channel = 1;
 else if (op_class_map->bw == BW40MINUS)
  oci->sec_channel = -1;

 return 0;
}
