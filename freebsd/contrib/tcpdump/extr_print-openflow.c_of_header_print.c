
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;

__attribute__((used)) static void
of_header_print(netdissect_options *ndo, const uint8_t version, const uint8_t type,
                      const uint16_t length, const uint32_t xid)
{
 ND_PRINT((ndo, "\n\tversion unknown (0x%02x), type 0x%02x, length %u, xid 0x%08x",
        version, type, length, xid));
}
