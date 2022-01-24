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
typedef  int uint8_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(netdissect_options *ndo,
                 const u_char *pptr, char *buf, u_int buflen)
{
    uint8_t addr_length;
    u_int total_length, offset;

    total_length = 0;

    /* Source address length, encoded in bits */
    FUNC0(pptr[0], 1);
    addr_length =  *pptr++;

    /* Source address */
    FUNC0(pptr[0], (addr_length >> 3));
    total_length += (addr_length >> 3) + 1;
    offset = FUNC3(buf);
    if (addr_length) {
        FUNC2(buf + offset, buflen - offset, ", Source %s",
                 FUNC1(ndo, pptr, addr_length));
        pptr += (addr_length >> 3);
    }

    /* Group address length, encoded in bits */
    FUNC0(pptr[0], 1);
    addr_length =  *pptr++;

    /* Group address */
    FUNC0(pptr[0], (addr_length >> 3));
    total_length += (addr_length >> 3) + 1;
    offset = FUNC3(buf);
    if (addr_length) {
        FUNC2(buf + offset, buflen - offset, ", Group %s",
                 FUNC1(ndo, pptr, addr_length));
        pptr += (addr_length >> 3);
    }

trunc:
    return (total_length);
}