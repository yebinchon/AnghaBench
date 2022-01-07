
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int COUNTOF (int ) ;
 char const* decode_bitflags (int ,char*,int ,int ) ;
 int peer_st_bits ;

__attribute__((used)) static const char *
peer_st_flags(
 u_char pst
 )
{
 return decode_bitflags(pst, ", ", peer_st_bits,
          COUNTOF(peer_st_bits));
}
