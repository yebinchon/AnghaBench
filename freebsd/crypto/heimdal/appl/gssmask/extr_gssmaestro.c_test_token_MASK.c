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
struct client {int dummy; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ GSMERR_OK ; 
 int /*<<< orphan*/  FUNC0 (struct client*,scalar_t__,struct client*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct client*,scalar_t__,struct client*,scalar_t__,int) ; 
 scalar_t__ FUNC2 (struct client*,scalar_t__,struct client*,scalar_t__,int,int) ; 

__attribute__((used)) static int32_t
FUNC3(struct client *c1, int32_t hc1, struct client *c2, int32_t hc2, int wrap_ext)
{
    int32_t val;
    int i;

    for (i = 0; i < 10; i++) {
	/* mic */
	FUNC0(c1, hc1, c2, hc2);
	FUNC0(c2, hc2, c1, hc1);

	/* wrap */
	val = FUNC1(c1, hc1, c2, hc2, 0);
	if (val) return val;
	val = FUNC1(c2, hc2, c1, hc1, 0);
	if (val) return val;

	val = FUNC1(c1, hc1, c2, hc2, 1);
	if (val) return val;
	val = FUNC1(c2, hc2, c1, hc1, 1);
	if (val) return val;

	if (wrap_ext) {
	    /* wrap ext */
	    val = FUNC2(c1, hc1, c2, hc2, 1, 0);
	    if (val) return val;
	    val = FUNC2(c2, hc2, c1, hc1, 1, 0);
	    if (val) return val;

	    val = FUNC2(c1, hc1, c2, hc2, 1, 1);
	    if (val) return val;
	    val = FUNC2(c2, hc2, c1, hc1, 1, 1);
	    if (val) return val;

	    val = FUNC2(c1, hc1, c2, hc2, 0, 0);
	    if (val) return val;
	    val = FUNC2(c2, hc2, c1, hc1, 0, 0);
	    if (val) return val;

	    val = FUNC2(c1, hc1, c2, hc2, 0, 1);
	    if (val) return val;
	    val = FUNC2(c2, hc2, c1, hc1, 0, 1);
	    if (val) return val;
	}
    }
    return GSMERR_OK;
}