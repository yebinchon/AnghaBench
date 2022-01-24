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
typedef  int /*<<< orphan*/  WPACKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t,unsigned char**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned int,size_t) ; 

int FUNC3(WPACKET *pkt, unsigned int val, size_t size)
{
    unsigned char *data;

    /* Internal API, so should not fail */
    if (!FUNC1(size <= sizeof(unsigned int))
            || !FUNC0(pkt, size, &data)
            || !FUNC2(data, val, size))
        return 0;

    return 1;
}