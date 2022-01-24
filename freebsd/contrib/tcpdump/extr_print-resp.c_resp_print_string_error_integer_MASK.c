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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(netdissect_options *ndo, register const u_char *bp, int length) {
    int length_cur = length, len, ret_len;
    const u_char *bp_ptr;

    /* bp points to the op; skip it */
    FUNC2(bp, length_cur);
    bp_ptr = bp;

    /*
     * bp now prints past the (+-;) opcode, so it's pointing to the first
     * character of the string (which could be numeric).
     * +OK\r\n
     * -ERR ...\r\n
     * :02912309\r\n
     *
     * Find the \r\n with FIND_CRLF().
     */
    FUNC0(bp_ptr, length_cur);

    /*
     * bp_ptr points to the \r\n, so bp_ptr - bp is the length of text
     * preceding the \r\n.  That includes the opcode, so don't print
     * that.
     */
    len = (bp_ptr - bp);
    FUNC1(ndo, bp, len);
    ret_len = 1 /*<opcode>*/ + len /*<string>*/ + 2 /*<CRLF>*/;

    FUNC3(ret_len);

trunc:
    return (-1);
}