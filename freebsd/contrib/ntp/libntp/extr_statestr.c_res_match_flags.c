
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;


 int COUNTOF (int ) ;
 char const* decode_bitflags (int ,char*,int ,int ) ;
 int res_match_bits ;

const char *
res_match_flags(
 u_short mf
 )
{
 return decode_bitflags(mf, " ", res_match_bits,
          COUNTOF(res_match_bits));
}
