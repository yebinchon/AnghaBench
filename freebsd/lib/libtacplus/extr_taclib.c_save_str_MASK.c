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
struct tac_handle {int dummy; } ;
struct clnt_str {size_t len; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clnt_str*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (struct tac_handle*,size_t) ; 

__attribute__((used)) static int
FUNC3(struct tac_handle *h, struct clnt_str *cs, const void *data,
    size_t len)
{
	FUNC0(cs);
	if (data != NULL && len != 0) {
		if ((cs->data = FUNC2(h, len)) == NULL)
			return -1;
		cs->len = len;
		FUNC1(cs->data, data, len);
	}
	return 0;
}