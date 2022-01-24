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
struct mbuf {char* m_data; int m_len; struct mbuf* m_next; } ;
struct m_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct mbuf* FUNC2 (int) ; 
 int FUNC3 () ; 
 scalar_t__ random_aligned ; 

__attribute__((used)) static struct mbuf *
FUNC4(char **lens)
{
	int len, off;
	struct mbuf *m;

	if (*lens == NULL)
		return NULL;

	len = FUNC0(*lens);
	off = random_aligned ? FUNC3() % 64 : 0;

	m = FUNC2(sizeof(struct m_hdr) + len + off);
	if (m == NULL)
		FUNC1(EXIT_FAILURE, "malloc failed");

	m->m_data = (char *)m + sizeof(struct m_hdr) + off;
	m->m_len = len;

	m->m_next = FUNC4(lens + 1);

	return m;
}