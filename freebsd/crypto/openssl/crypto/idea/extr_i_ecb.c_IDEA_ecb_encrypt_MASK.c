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
typedef  int /*<<< orphan*/  IDEA_KEY_SCHEDULE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,unsigned long) ; 

void FUNC3(const unsigned char *in, unsigned char *out,
                      IDEA_KEY_SCHEDULE *ks)
{
    unsigned long l0, l1, d[2];

    FUNC2(in, l0);
    d[0] = l0;
    FUNC2(in, l1);
    d[1] = l1;
    FUNC0(d, ks);
    l0 = d[0];
    FUNC1(l0, out);
    l1 = d[1];
    FUNC1(l1, out);
    l0 = l1 = d[0] = d[1] = 0;
}