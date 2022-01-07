
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct multi_band_ie {int mb_ctrl; int len; int * bssid; } ;


 int ETH_ALEN ;
 int MB_CTRL_ROLE (int) ;
 int MB_CTRL_STA_MAC_PRESENT ;



__attribute__((used)) static const u8 * fst_mbie_get_peer_addr(const struct multi_band_ie *mbie)
{
 const u8 *peer_addr = ((void*)0);

 switch (MB_CTRL_ROLE(mbie->mb_ctrl)) {
 case 129:
  peer_addr = mbie->bssid;
  break;
 case 128:
  if (mbie->mb_ctrl & MB_CTRL_STA_MAC_PRESENT &&
      (size_t) 2 + mbie->len >= sizeof(*mbie) + ETH_ALEN)
   peer_addr = (const u8 *) &mbie[1];
  break;
 default:
  break;
 }

 return peer_addr;
}
