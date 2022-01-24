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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(netdissect_options *ndo, register const u_char *bp, int length) {
    int length_cur = length, string_len;

    /* bp points to the op; skip it */
    FUNC6(bp, length_cur);

    /* <length>\r\n */
    FUNC2(ndo, length_cur, bp, string_len);

    if (string_len >= 0) {
        /* Byte string of length string_len, starting at bp */
        if (string_len == 0)
            FUNC7(ndo);
        else {
            FUNC3(length_cur, string_len);
            FUNC4(*bp, string_len);
            FUNC5(ndo, bp, string_len);
            bp += string_len;
            length_cur -= string_len;
        }

        /*
         * Find the \r\n at the end of the string and skip past it.
         * XXX - report an error if the \r\n isn't immediately after
         * the item?
         */
        FUNC1(bp, length_cur);
        FUNC0(bp, length_cur);
    } else {
        /* null, truncated, or invalid for some reason */
        switch(string_len) {
            case (-1):  FUNC11(ndo);             break;
            case (-2):  goto trunc;
            case (-3):  FUNC10(ndo); break;
            case (-4):  FUNC9(ndo);  break;
            default:    FUNC8(ndo);          break;
        }
    }

    return (length - length_cur);

trunc:
    return (-1);
}