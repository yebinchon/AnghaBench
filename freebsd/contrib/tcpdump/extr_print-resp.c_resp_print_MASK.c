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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC3(netdissect_options *ndo, const u_char *bp, u_int length)
{
    int ret_len = 0, length_cur = length;

    if(!bp || length <= 0)
        return;

    FUNC0((ndo, ": RESP"));
    while (length_cur > 0) {
        /*
         * This block supports redis pipelining.
         * For example, multiple operations can be pipelined within the same string:
         * "*2\r\n\$4\r\nINCR\r\n\$1\r\nz\r\n*2\r\n\$4\r\nINCR\r\n\$1\r\nz\r\n*2\r\n\$4\r\nINCR\r\n\$1\r\nz\r\n"
         * or
         * "PING\r\nPING\r\nPING\r\n"
         * In order to handle this case, we must try and parse 'bp' until
         * 'length' bytes have been processed or we reach a trunc condition.
         */
        ret_len = FUNC2(ndo, bp, length_cur);
        FUNC1(ret_len);
        bp += ret_len;
        length_cur -= ret_len;
    }

    return;

trunc:
    FUNC0((ndo, "%s", tstr));
}