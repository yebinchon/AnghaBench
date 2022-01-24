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
struct gctl_req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct gctl_req*,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,char*) ; 
 char* FUNC4 (struct gctl_req*,char*) ; 
 int FUNC5 (struct gctl_req*,char*) ; 

__attribute__((used)) static void
FUNC6(struct gctl_req *req)
{
	const char *prov;
	int nargs;

	nargs = FUNC5(req, "nargs");
	if (nargs != 1) {
		FUNC3(req, "Invalid number of arguments.");
		return;
	}
	prov = FUNC4(req, "arg0");

	if (FUNC2(prov))
		FUNC0(req, prov);
	else
		FUNC1(req, prov);
}