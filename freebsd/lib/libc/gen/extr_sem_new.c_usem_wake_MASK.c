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
struct _usem2 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UMTX_OP_SEM2_WAKE ; 
 int FUNC0 (struct _usem2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline int
FUNC1(struct _usem2 *sem)
{

	return (FUNC0(sem, UMTX_OP_SEM2_WAKE, 0, NULL, NULL));
}