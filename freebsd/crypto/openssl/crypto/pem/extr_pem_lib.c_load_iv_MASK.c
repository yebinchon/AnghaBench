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
 int FUNC0 (char) ; 
 int /*<<< orphan*/  PEM_F_LOAD_IV ; 
 int /*<<< orphan*/  PEM_R_BAD_IV_CHARS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(char **fromp, unsigned char *to, int num)
{
    int v, i;
    char *from;

    from = *fromp;
    for (i = 0; i < num; i++)
        to[i] = 0;
    num *= 2;
    for (i = 0; i < num; i++) {
        v = FUNC0(*from);
        if (v < 0) {
            FUNC1(PEM_F_LOAD_IV, PEM_R_BAD_IV_CHARS);
            return 0;
        }
        from++;
        to[i / 2] |= v << (long)((!(i & 1)) * 4);
    }

    *fromp = from;
    return 1;
}