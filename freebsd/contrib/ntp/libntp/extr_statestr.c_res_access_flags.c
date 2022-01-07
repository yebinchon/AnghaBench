
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;


 int COUNTOF (int ) ;
 char const* decode_bitflags (int ,char*,int ,int ) ;
 int res_access_bits ;

const char *
res_access_flags(
 u_short af
 )
{
 return decode_bitflags(af, " ", res_access_bits,
          COUNTOF(res_access_bits));
}
