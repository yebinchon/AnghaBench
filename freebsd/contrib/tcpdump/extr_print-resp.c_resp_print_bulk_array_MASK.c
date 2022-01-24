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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(netdissect_options *ndo, register const u_char *bp, int length) {
    u_int length_cur = length;
    int array_len, i, ret_len;

    /* bp points to the op; skip it */
    FUNC1(bp, length_cur);

    /* <array_length>\r\n */
    FUNC0(ndo, length_cur, bp, array_len);

    if (array_len > 0) {
        /* non empty array */
        for (i = 0; i < array_len; i++) {
            ret_len = FUNC3(ndo, bp, length_cur);

            FUNC2(ret_len);

            bp += ret_len;
            length_cur -= ret_len;
        }
    } else {
        /* empty, null, truncated, or invalid */
        switch(array_len) {
            case 0:     FUNC4(ndo);            break;
            case (-1):  FUNC8(ndo);             break;
            case (-2):  goto trunc;
            case (-3):  FUNC7(ndo); break;
            case (-4):  FUNC6(ndo);  break;
            default:    FUNC5(ndo);          break;
        }
    }

    return (length - length_cur);

trunc:
    return (-1);
}