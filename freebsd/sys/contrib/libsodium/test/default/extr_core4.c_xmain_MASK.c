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
 int /*<<< orphan*/  c ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in ; 
 int /*<<< orphan*/  k ; 
 scalar_t__* out ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

int
FUNC2(void)
{
    int i;

    FUNC0(out, in, k, c);
    for (i = 0; i < 64; ++i) {
        if (i > 0) {
            FUNC1(",");
        } else {
            FUNC1(" ");
        }
        FUNC1("%3u", (unsigned int) out[i]);
        if (i % 8 == 7) {
            FUNC1("\n");
        }
    }
    return 0;
}