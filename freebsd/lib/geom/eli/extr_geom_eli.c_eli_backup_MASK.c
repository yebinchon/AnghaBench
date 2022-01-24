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
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct gctl_req*,char*) ; 
 char* FUNC2 (struct gctl_req*,char*) ; 
 int FUNC3 (struct gctl_req*,char*) ; 

__attribute__((used)) static void
FUNC4(struct gctl_req *req)
{
	const char *file, *prov;
	int nargs;

	nargs = FUNC3(req, "nargs");
	if (nargs != 2) {
		FUNC1(req, "Invalid number of arguments.");
		return;
	}
	prov = FUNC2(req, "arg0");
	file = FUNC2(req, "arg1");

	FUNC0(req, prov, file);
}