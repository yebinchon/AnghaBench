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
struct asn1_template {int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int FUNC0 (struct asn1_template const*,void const*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct asn1_template const*,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(const struct asn1_template *t, const void *from, void *to)
{
    int ret;
    FUNC2(to, 0, t->offset);
    ret = FUNC0(t, from, to);
    if (ret) {
	FUNC1(t, to);
	FUNC2(to, 0, t->offset);
    }
    return ret;
}