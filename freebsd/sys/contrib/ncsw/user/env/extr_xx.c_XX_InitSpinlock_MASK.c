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
typedef  struct mtx* t_Handle ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int MTX_DEF ; 
 int MTX_DUPOK ; 
 int /*<<< orphan*/  M_NETCOMMSW ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 struct mtx* FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mtx*,char*,int /*<<< orphan*/ *,int) ; 

t_Handle
FUNC2(void)
{
	struct mtx *m;

	m = FUNC0(sizeof(*m), M_NETCOMMSW, M_NOWAIT | M_ZERO);
	if (!m)
		return (0);

	FUNC1(m, "NetCommSW Lock", NULL, MTX_DEF | MTX_DUPOK);

	return (m);
}