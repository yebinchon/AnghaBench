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
struct eui64 {int dummy; } ;
typedef  int /*<<< orphan*/  e ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int EUI64_SIZ ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int,char*) ; 
 scalar_t__ FUNC2 (char const*,struct eui64*) ; 
 int /*<<< orphan*/  FUNC3 (struct eui64*,char*,int) ; 
 int FUNC4 (struct eui64*,struct eui64 const*,int) ; 

__attribute__((used)) static void
FUNC5(const char *str, const struct eui64 *eui)
{
	struct eui64 e;
	char buf[EUI64_SIZ];
	int rc;

	FUNC0(FUNC2(str, &e) == 0, "eui64_aton failed");
	rc = FUNC4(&e, eui, sizeof(e));
	if (rc != 0) {
		FUNC3(&e, buf, sizeof(buf));
		FUNC1(
		    "eui64_aton(\"%s\", ..) failed; memcmp returned %d. "
		    "String obtained form eui64_ntoa was: `%s`",
		    str, rc, buf);
	}
}