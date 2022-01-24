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
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct gctl_req* FUNC2 () ; 
 char* FUNC3 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*) ; 

__attribute__((used)) static void
FUNC6(const char *dest)
{
	struct gctl_req *r;
	const char *errstr;
	char buf[BUFSIZ];

	r = FUNC2();
	FUNC4(r, "verb", -1, "destroy geom");
	FUNC4(r, "class", -1, "BDE");
	FUNC5(buf, "%s.bde", dest);
	FUNC4(r, "geom", -1, buf);
	/* gctl_dump(r, stdout); */
	errstr = FUNC3(r);
	if (errstr != NULL)
		FUNC0(1, "Detach of %s failed: %s", dest, errstr);
	FUNC1 (0);
}