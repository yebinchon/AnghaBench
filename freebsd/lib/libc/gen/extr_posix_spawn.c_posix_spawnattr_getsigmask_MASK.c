#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sigset_t ;
typedef  TYPE_1__* posix_spawnattr_t ;
struct TYPE_3__ {int /*<<< orphan*/  sa_sigmask; } ;

/* Variables and functions */

int
FUNC0(const posix_spawnattr_t * __restrict sa,
    sigset_t * __restrict sigmask)
{
	*sigmask = (*sa)->sa_sigmask;
	return (0);
}