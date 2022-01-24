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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(const char *in, unsigned char *out, int size)
{
    int i, n;
    unsigned char j;

    i = size * 2;
    n = FUNC4(in);
    if (n > i) {
        FUNC0(bio_err, "hex string is too long, ignoring excess\n");
        n = i; /* ignore exceeding part */
    } else if (n < i) {
        FUNC0(bio_err, "hex string is too short, padding with zero bytes to length\n");
    }

    FUNC3(out, 0, size);
    for (i = 0; i < n; i++) {
        j = (unsigned char)*in++;
        if (!FUNC2(j)) {
            FUNC0(bio_err, "non-hex digit\n");
            return 0;
        }
        j = (unsigned char)FUNC1(j);
        if (i & 1)
            out[i / 2] |= j;
        else
            out[i / 2] = (j << 4);
    }
    return 1;
}