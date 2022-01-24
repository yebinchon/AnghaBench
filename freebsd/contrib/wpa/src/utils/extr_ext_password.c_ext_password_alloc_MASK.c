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
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 

struct wpabuf * FUNC6(size_t len)
{
	struct wpabuf *buf;

	buf = FUNC3(len);
	if (buf == NULL)
		return NULL;

#ifdef __linux__
	if (FUNC0(FUNC4(buf), FUNC5(buf)) < 0) {
		FUNC2(MSG_ERROR, "EXT PW: mlock failed: %s",
			   FUNC1(errno));
	}
#endif /* __linux__ */

	return buf;
}