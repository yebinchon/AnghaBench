
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_char ;


 int EXTRACT_32BITS (int const*) ;

__attribute__((used)) static uint64_t
lldp_extract_latlon(const u_char *tptr)
{
    uint64_t latlon;

    latlon = *tptr & 0x3;
    latlon = (latlon << 32) | EXTRACT_32BITS(tptr+1);

    return latlon;
}
