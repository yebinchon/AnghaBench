#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
typedef  int u_int ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  netdissect_options ;
typedef  int /*<<< orphan*/  ident_buffer ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,char const*) ; 

__attribute__((used)) static int
FUNC13(netdissect_options *ndo,
                         const uint8_t *tptr, const char *ident, uint16_t afi)
{
    char ident_buffer[20];
    uint8_t prefix[sizeof(struct in6_addr)]; /* shared copy buffer for IPv4 and IPv6 prefixes */
    u_int metric, status_byte, bit_length, byte_length, sublen, processed, subtlvtype, subtlvlen;

    if (!FUNC6(*tptr, 4))
        return (0);
    metric = FUNC0(tptr);
    processed=4;
    tptr+=4;

    if (afi == AF_INET) {
        if (!FUNC6(*tptr, 1)) /* fetch status byte */
            return (0);
        status_byte=*(tptr++);
        bit_length = status_byte&0x3f;
        if (bit_length > 32) {
            FUNC5((ndo, "%sIPv4 prefix: bad bit length %u",
                   ident,
                   bit_length));
            return (0);
        }
        processed++;
    } else if (afi == AF_INET6) {
        if (!FUNC6(*tptr, 2)) /* fetch status & prefix_len byte */
            return (0);
        status_byte=*(tptr++);
        bit_length=*(tptr++);
        if (bit_length > 128) {
            FUNC5((ndo, "%sIPv6 prefix: bad bit length %u",
                   ident,
                   bit_length));
            return (0);
        }
        processed+=2;
    } else
        return (0); /* somebody is fooling us */

    byte_length = (bit_length + 7) / 8; /* prefix has variable length encoding */

    if (!FUNC6(*tptr, byte_length))
        return (0);
    FUNC11(prefix, 0, sizeof prefix);   /* clear the copy buffer */
    FUNC10(prefix,tptr,byte_length);    /* copy as much as is stored in the TLV */
    tptr+=byte_length;
    processed+=byte_length;

    if (afi == AF_INET)
        FUNC5((ndo, "%sIPv4 prefix: %15s/%u",
               ident,
               FUNC8(ndo, prefix),
               bit_length));
    else if (afi == AF_INET6)
        FUNC5((ndo, "%sIPv6 prefix: %s/%u",
               ident,
               FUNC7(ndo, prefix),
               bit_length));

    FUNC5((ndo, ", Distribution: %s, Metric: %u",
           FUNC4(status_byte) ? "down" : "up",
           metric));

    if (afi == AF_INET && FUNC3(status_byte))
        FUNC5((ndo, ", sub-TLVs present"));
    else if (afi == AF_INET6)
        FUNC5((ndo, ", %s%s",
               FUNC1(status_byte) ? "External" : "Internal",
               FUNC2(status_byte) ? ", sub-TLVs present" : ""));

    if ((afi == AF_INET  && FUNC3(status_byte))
     || (afi == AF_INET6 && FUNC2(status_byte))
	) {
        /* assume that one prefix can hold more
           than one subTLV - therefore the first byte must reflect
           the aggregate bytecount of the subTLVs for this prefix
        */
        if (!FUNC6(*tptr, 1))
            return (0);
        sublen=*(tptr++);
        processed+=sublen+1;
        FUNC5((ndo, " (%u)", sublen));   /* print out subTLV length */

        while (sublen>0) {
            if (!FUNC6(*tptr,2))
                return (0);
            subtlvtype=*(tptr++);
            subtlvlen=*(tptr++);
            /* prepend the indent string */
            FUNC12(ident_buffer, sizeof(ident_buffer), "%s  ",ident);
            if (!FUNC9(ndo, tptr, subtlvtype, subtlvlen, ident_buffer))
                return(0);
            tptr+=subtlvlen;
            sublen-=(subtlvlen+2);
        }
    }
    return (processed);
}