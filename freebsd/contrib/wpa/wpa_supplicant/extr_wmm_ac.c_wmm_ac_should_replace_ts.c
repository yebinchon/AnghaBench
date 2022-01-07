
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {scalar_t__** tspecs; } ;
typedef enum ts_dir_idx { ____Placeholder_ts_dir_idx } ts_dir_idx ;


 int BIT (int) ;
 int MSG_DEBUG ;
 int TS_DIR_IDX_BIDI ;
 int TS_DIR_IDX_COUNT ;
 int TS_DIR_IDX_DOWNLINK ;
 int TS_DIR_IDX_UPLINK ;



 int wmm_ac_find_tsid (struct wpa_supplicant*,int,int*) ;
 int wpa_printf (int ,char*,int,int) ;

__attribute__((used)) static int wmm_ac_should_replace_ts(struct wpa_supplicant *wpa_s,
        u8 tsid, u8 ac, u8 dir)
{
 enum ts_dir_idx idx;
 int cur_ac, existing_ts = 0, replace_ts = 0;

 cur_ac = wmm_ac_find_tsid(wpa_s, tsid, &idx);
 if (cur_ac >= 0) {
  if (cur_ac != ac) {
   wpa_printf(MSG_DEBUG,
       "WMM AC: TSID %i already exists on different ac (%d)",
       tsid, cur_ac);
   return -1;
  }


  replace_ts |= BIT(idx);
 }

 for (idx = 0; idx < TS_DIR_IDX_COUNT; idx++) {
  if (wpa_s->tspecs[ac][idx])
   existing_ts |= BIT(idx);
 }

 switch (dir) {
 case 128:

  replace_ts |= existing_ts & (BIT(TS_DIR_IDX_UPLINK) |
          BIT(TS_DIR_IDX_BIDI));
  break;
 case 129:

  replace_ts |= existing_ts & (BIT(TS_DIR_IDX_DOWNLINK) |
          BIT(TS_DIR_IDX_BIDI));
  break;
 case 130:

  replace_ts |= existing_ts;
  break;
 default:
  return -1;
 }

 return replace_ts;
}
