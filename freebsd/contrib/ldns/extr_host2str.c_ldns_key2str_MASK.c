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
typedef  int /*<<< orphan*/  ldns_key ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_MAX_PACKETLEN ; 
 scalar_t__ LDNS_STATUS_OK ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

char *
FUNC4(const ldns_key *k)
{
	char *result = NULL;
	ldns_buffer *tmp_buffer = FUNC2(LDNS_MAX_PACKETLEN);

	if (!tmp_buffer) {
		return NULL;
	}
	if (FUNC3(tmp_buffer, k) == LDNS_STATUS_OK) {
		/* export and return string, destroy rest */
		result = FUNC0(tmp_buffer);
	}
	FUNC1(tmp_buffer);
	return result;
}