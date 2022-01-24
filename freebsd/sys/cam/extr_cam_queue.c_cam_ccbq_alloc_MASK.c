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
struct cam_ccbq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_CAMCCBQ ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 scalar_t__ FUNC0 (struct cam_ccbq*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_ccbq*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

struct cam_ccbq *
FUNC4(int openings)
{
	struct cam_ccbq *ccbq;

	ccbq = (struct cam_ccbq *)FUNC2(sizeof(*ccbq), M_CAMCCBQ, M_NOWAIT);
	if (ccbq == NULL) {
		FUNC3("cam_ccbq_alloc: - cannot malloc!\n");
		return (NULL);
	}
	if (FUNC0(ccbq, openings) != 0) {
		FUNC1(ccbq, M_CAMCCBQ);
		return (NULL);		
	}
	
	return (ccbq);
}