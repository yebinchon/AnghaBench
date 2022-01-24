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
struct mbuf {int dummy; } ;
struct mbdata {int dummy; } ;

/* Variables and functions */
 int FUNC0 (size_t,struct mbuf**) ; 
 int FUNC1 (struct mbdata*,struct mbuf*) ; 

int
FUNC2(struct mbdata *mbp, size_t size)
{
	struct mbuf *m;
	int error;

	if ((error = FUNC0(size, &m)) != 0)
		return error;
	return FUNC1(mbp, m);
}