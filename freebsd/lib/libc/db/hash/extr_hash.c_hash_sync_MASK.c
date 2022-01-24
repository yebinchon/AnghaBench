#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
struct TYPE_7__ {scalar_t__ internal; } ;
struct TYPE_6__ {int fp; scalar_t__ new_file; int /*<<< orphan*/  save_file; } ;
typedef  TYPE_1__ HTAB ;
typedef  TYPE_2__ DB ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ERROR ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(const DB *dbp, u_int32_t flags)
{
	HTAB *hashp;

	if (flags != 0) {
		errno = EINVAL;
		return (ERROR);
	}

	if (!dbp)
		return (ERROR);

	hashp = (HTAB *)dbp->internal;
	if (!hashp->save_file)
		return (0);
	if (FUNC0(hashp, 0, 1) || FUNC2(hashp))
		return (ERROR);
	if (hashp->fp != -1 && FUNC1(hashp->fp) != 0)
		return (ERROR);
	hashp->new_file = 0;
	return (0);
}