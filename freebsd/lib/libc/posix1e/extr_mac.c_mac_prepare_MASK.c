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
struct mac {int m_buflen; int /*<<< orphan*/ * m_string; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int MAC_MAX_LABEL_BUF_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct mac*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC3 (char const*) ; 

int
FUNC4(struct mac **mac, const char *elements)
{

	if (FUNC3(elements) >= MAC_MAX_LABEL_BUF_LEN)
		return (EINVAL);

	*mac = (struct mac *) FUNC1(sizeof(**mac));
	if (*mac == NULL)
		return (ENOMEM);

	(*mac)->m_string = FUNC1(MAC_MAX_LABEL_BUF_LEN);
	if ((*mac)->m_string == NULL) {
		FUNC0(*mac);
		*mac = NULL;
		return (ENOMEM);
	}

	FUNC2((*mac)->m_string, elements);
	(*mac)->m_buflen = MAC_MAX_LABEL_BUF_LEN;

	return (0);
}