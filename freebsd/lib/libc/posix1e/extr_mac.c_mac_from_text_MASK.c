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
struct mac {int /*<<< orphan*/ * m_string; scalar_t__ m_buflen; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct mac*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct mac **mac, const char *text)
{

	*mac = (struct mac *) FUNC1(sizeof(**mac));
	if (*mac == NULL)
		return (ENOMEM);

	(*mac)->m_string = FUNC2(text);
	if ((*mac)->m_string == NULL) {
		FUNC0(*mac);
		*mac = NULL;
		return (ENOMEM);
	}

	(*mac)->m_buflen = FUNC3((*mac)->m_string)+1;

	return (0);
}