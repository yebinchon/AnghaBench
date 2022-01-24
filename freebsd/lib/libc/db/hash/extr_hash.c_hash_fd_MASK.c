#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ internal; } ;
struct TYPE_4__ {int fp; } ;
typedef  TYPE_1__ HTAB ;
typedef  TYPE_2__ DB ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int ERROR ; 
 int /*<<< orphan*/  errno ; 

__attribute__((used)) static int
FUNC0(const DB *dbp)
{
	HTAB *hashp;

	if (!dbp)
		return (ERROR);

	hashp = (HTAB *)dbp->internal;
	if (hashp->fp == -1) {
		errno = ENOENT;
		return (-1);
	}
	return (hashp->fp);
}