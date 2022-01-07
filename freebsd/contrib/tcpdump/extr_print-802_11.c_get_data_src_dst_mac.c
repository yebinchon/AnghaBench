
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_char ;


 int * ADDR1 ;
 int * ADDR2 ;
 int * ADDR3 ;
 int * ADDR4 ;
 int FC_FROM_DS (int ) ;
 int FC_TO_DS (int ) ;

__attribute__((used)) static void
get_data_src_dst_mac(uint16_t fc, const u_char *p, const uint8_t **srcp,
                     const uint8_t **dstp)
{





 if (!FC_TO_DS(fc)) {
  if (!FC_FROM_DS(fc)) {

   *srcp = (p + 10);
   *dstp = (p + 4);
  } else {

   *srcp = (p + 16);
   *dstp = (p + 4);
  }
 } else {
  if (!FC_FROM_DS(fc)) {

   *srcp = (p + 10);
   *dstp = (p + 16);
  } else {

   *srcp = (p + 24);
   *dstp = (p + 16);
  }
 }





}
