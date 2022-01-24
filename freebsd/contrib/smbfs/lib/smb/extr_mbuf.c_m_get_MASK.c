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
struct mbuf {size_t m_maxlen; int /*<<< orphan*/  m_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t FUNC0 (size_t) ; 
 scalar_t__ M_BASESIZE ; 
 size_t M_MINSIZE ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,scalar_t__) ; 
 struct mbuf* FUNC3 (scalar_t__) ; 

__attribute__((used)) static int
FUNC4(size_t len, struct mbuf **mpp)
{
	struct mbuf *m;

	len = FUNC0(len);
	if (len < M_MINSIZE)
		len = M_MINSIZE;
	m = FUNC3(M_BASESIZE + len);
	if (m == NULL)
		return ENOMEM;
	FUNC2(m, M_BASESIZE + len);
	m->m_maxlen = len;
	m->m_data = FUNC1(m);
	*mpp = m;
	return 0;
}