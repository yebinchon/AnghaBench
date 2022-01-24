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
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 
 struct wpabuf* FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(int line, const char *name, struct wpabuf **buf,
			    const char *val)
{
	struct wpabuf *elems;

	if (val[0] == '\0') {
		FUNC1(*buf);
		*buf = NULL;
		return 0;
	}

	elems = FUNC2(val);
	if (!elems) {
		FUNC0(MSG_ERROR, "Line %d: Invalid %s '%s'",
			   line, name, val);
		return -1;
	}

	FUNC1(*buf);
	*buf = elems;

	return 0;
}