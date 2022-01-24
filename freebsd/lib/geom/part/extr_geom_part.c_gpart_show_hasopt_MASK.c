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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gctl_req*,char*,char const*) ; 

__attribute__((used)) static int
FUNC2(struct gctl_req *req, const char *opt, const char *elt)
{

	if (!FUNC1(req, "%s", opt))
		return (0);

	if (elt != NULL)
		FUNC0(EXIT_FAILURE, "-l and -r are mutually exclusive");

	return (1);
}