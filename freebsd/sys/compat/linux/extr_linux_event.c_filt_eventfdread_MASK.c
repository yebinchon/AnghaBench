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
struct knote {struct eventfd* kn_hook; } ;
struct eventfd {scalar_t__ efd_count; int /*<<< orphan*/  efd_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct knote *kn, long hint)
{
	struct eventfd *efd = kn->kn_hook;
	int ret;

	FUNC0(&efd->efd_lock, MA_OWNED);
	ret = (efd->efd_count > 0);

	return (ret);
}