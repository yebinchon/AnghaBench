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
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/  const*,int,int) ; 

__attribute__((used)) static void
FUNC4(netdissect_options *ndo, const uint8_t *pptr,
	        uint16_t checksum, int checksum_offset, u_int length)
{
        uint16_t calculated_checksum;

        /* do not attempt to verify the checksum if it is zero,
         * if the offset is nonsense,
         * or the base pointer is not sane
         */
        if (!checksum
            || checksum_offset < 0
            || !FUNC1(*(pptr + checksum_offset), 2)
            || (u_int)checksum_offset > length
            || !FUNC1(*pptr, length)) {
                FUNC0((ndo, " (unverified)"));
        } else {
#if 0
                printf("\nosi_print_cksum: %p %u %u\n", pptr, checksum_offset, length);
#endif
                calculated_checksum = FUNC2(pptr, checksum_offset, length);
                if (checksum == calculated_checksum) {
                        FUNC0((ndo, " (correct)"));
                } else {
                        FUNC0((ndo, " (incorrect should be 0x%04x)", calculated_checksum));
                }
        }
}