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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 size_t FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned char*,int,int,unsigned char**) ; 

int FUNC2(unsigned char *p, uint64_t r, int neg)
{
    unsigned char buf[sizeof(uint64_t)];
    size_t off;

    off = FUNC0(buf, r);
    return FUNC1(buf + off, sizeof(buf) - off, neg, &p);
}