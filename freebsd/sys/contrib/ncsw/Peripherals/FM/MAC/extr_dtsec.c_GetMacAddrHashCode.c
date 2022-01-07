
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int GET_MAC_ADDR_CRC (int ,int ) ;
 int GetMirror32 (int ) ;

__attribute__((used)) static uint32_t GetMacAddrHashCode(uint64_t ethAddr)
{
    uint32_t crc;


    GET_MAC_ADDR_CRC(ethAddr, crc);

    crc = GetMirror32(crc);

    return crc;
}
