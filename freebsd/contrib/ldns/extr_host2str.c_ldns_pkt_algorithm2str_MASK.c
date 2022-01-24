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
typedef  int /*<<< orphan*/  ldns_buffer ;
typedef  int /*<<< orphan*/  ldns_algorithm ;

/* Variables and functions */
 scalar_t__ LDNS_STATUS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 

char *
FUNC4(ldns_algorithm algorithm)
{
	char *str;
	ldns_buffer *buf;

	buf = FUNC3(10);
	if (!buf) {
		return NULL;
	}

	str = NULL;
	if (FUNC0(buf, algorithm)
	    == LDNS_STATUS_OK) {
		str = FUNC1(buf);
	}

	FUNC2(buf);
	return str;
}