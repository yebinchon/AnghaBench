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
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(netdissect_options *ndo,
                                    const u_char *ptr)
{
    FUNC0((ndo, "\n\t    Priority Assignment Table"));
    FUNC0((ndo, "\n\t     Priority : 0   1   2   3   4   5   6   7"));
    FUNC0((ndo, "\n\t     Value    : %-3d %-3d %-3d %-3d %-3d %-3d %-3d %-3d",
            ptr[0]>>4,ptr[0]&0x0f,ptr[1]>>4,ptr[1]&0x0f,ptr[2]>>4,
            ptr[2] & 0x0f, ptr[3] >> 4, ptr[3] & 0x0f));
}