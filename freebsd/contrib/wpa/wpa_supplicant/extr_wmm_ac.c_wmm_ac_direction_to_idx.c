
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MSG_ERROR ;
 int TS_DIR_IDX_BIDI ;
 int TS_DIR_IDX_DOWNLINK ;
 int TS_DIR_IDX_UPLINK ;



 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static u8 wmm_ac_direction_to_idx(u8 direction)
{
 switch (direction) {
 case 128:
  return TS_DIR_IDX_UPLINK;
 case 129:
  return TS_DIR_IDX_DOWNLINK;
 case 130:
  return TS_DIR_IDX_BIDI;
 default:
  wpa_printf(MSG_ERROR, "Invalid direction: %d", direction);
  return 128;
 }
}
