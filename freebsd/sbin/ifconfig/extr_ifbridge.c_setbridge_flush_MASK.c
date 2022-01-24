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
struct ifbreq {int /*<<< orphan*/  ifbr_ifsflags; } ;
struct afswtch {int dummy; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  BRDGFLUSH ; 
 int /*<<< orphan*/  IFBF_FLUSHDYN ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,struct ifbreq*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifbreq*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(const char *val, int d, int s, const struct afswtch *afp)
{
	struct ifbreq req;

	FUNC2(&req, 0, sizeof(req));
	req.ifbr_ifsflags = IFBF_FLUSHDYN;
	if (FUNC0(s, BRDGFLUSH, &req, sizeof(req), 1) < 0)
		FUNC1(1, "BRDGFLUSH");
}