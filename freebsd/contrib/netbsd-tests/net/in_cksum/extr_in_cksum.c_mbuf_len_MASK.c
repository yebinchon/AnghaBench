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
struct mbuf {int m_len; struct mbuf* m_next; } ;

/* Variables and functions */

__attribute__((used)) static int
FUNC0(struct mbuf *m)
{
	return m == NULL ? 0 : m->m_len + FUNC0(m->m_next);
}