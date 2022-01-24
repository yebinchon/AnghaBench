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
typedef  int /*<<< orphan*/  ldns_rr_class ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 scalar_t__ LDNS_STATUS_OK ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 

char *
FUNC4(const ldns_rr_class klass)
{
	ldns_buffer *buf;
	char *str;

	buf = FUNC2(10);
	if (!buf) {
		return NULL;
	}

	str = NULL;
	if (FUNC3(buf, klass) == LDNS_STATUS_OK) {
		str = FUNC0(buf);
	}
	FUNC1(buf);
	return str;
}