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
typedef  scalar_t__ u_int ;
typedef  scalar_t__ u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__ const*,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(netdissect_options *ndo,
                const u_char *cp, u_int max_length, int print)
{
    u_int length = 0;
    while (length < max_length) {
        u_int lab_length = cp[length++];
        if (lab_length == 0)
            return (int)length;
        if (length > 1 && print)
            FUNC1(ndo, '.');
        if (length+lab_length > max_length) {
            if (print)
                FUNC2(ndo, cp+length, max_length-length);
            break;
        }
        if (print)
            FUNC2(ndo, cp+length, lab_length);
        length += lab_length;
    }
    if (print)
        FUNC0((ndo, "[|DNS]"));
    return -1;
}