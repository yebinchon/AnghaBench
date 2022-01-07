
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int netdissect_options ;


 int init_addrtoname (int *,int ,int ) ;
 int init_checksum () ;
 int thiszone ;

void
init_print(netdissect_options *ndo, uint32_t localnet, uint32_t mask,
    uint32_t timezone_offset)
{

 thiszone = timezone_offset;
 init_addrtoname(ndo, localnet, mask);
 init_checksum();
}
