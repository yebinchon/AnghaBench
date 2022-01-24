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
struct mbuf {struct mbuf* m_next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mbuf*) ; 
 int FUNC1 (size_t,struct mbuf**) ; 

int
FUNC2(struct mbuf *top, size_t len, struct mbuf **mpp)
{
	struct mbuf *m, *mp;
	int error;
	
	for (mp = top; ; mp = mp->m_next) {
		len -= FUNC0(mp);
		if (mp->m_next == NULL)
			break;
		
	}
	if (len > 0) {
		if ((error = FUNC1(len, &m)) != 0)
			return error;
		mp->m_next = m;
	}
	*mpp = top;
	return 0;
}