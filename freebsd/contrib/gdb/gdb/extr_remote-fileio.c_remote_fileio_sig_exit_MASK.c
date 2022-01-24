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

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  remote_fio_ofunc ; 
 int /*<<< orphan*/  remote_fio_osa ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (void)
{
#if defined (HAVE_SIGACTION) && defined (SA_RESTART)
  sigaction (SIGINT, &remote_fio_osa, NULL);
#else
  FUNC1 (SIGINT, remote_fio_ofunc);
#endif
}