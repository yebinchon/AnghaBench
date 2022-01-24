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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
#define  RESP_ARRAY 132 
#define  RESP_BULK_STRING 131 
#define  RESP_ERROR 130 
#define  RESP_INTEGER 129 
#define  RESP_SIMPLE_STRING 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int const*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int const*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int const*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int const*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int const*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int const*,int) ; 

__attribute__((used)) static int
FUNC9(netdissect_options *ndo, register const u_char *bp, int length)
{
    u_char op;
    int ret_len;

    FUNC0(length, 1);
    FUNC1(*bp);
    op = *bp;

    /* bp now points to the op, so these routines must skip it */
    switch(op) {
        case RESP_SIMPLE_STRING:  ret_len = FUNC8(ndo, bp, length);   break;
        case RESP_INTEGER:        ret_len = FUNC7(ndo, bp, length);         break;
        case RESP_ERROR:          ret_len = FUNC5(ndo, bp, length);           break;
        case RESP_BULK_STRING:    ret_len = FUNC4(ndo, bp, length);     break;
        case RESP_ARRAY:          ret_len = FUNC3(ndo, bp, length);      break;
        default:                  ret_len = FUNC6(ndo, bp, length);          break;
    }

    /*
     * This gives up with a "truncated" indicator for all errors,
     * including invalid packet errors; that's what we want, as
     * we have to give up on further parsing in that case.
     */
    FUNC2(ret_len);

trunc:
    return (-1);
}