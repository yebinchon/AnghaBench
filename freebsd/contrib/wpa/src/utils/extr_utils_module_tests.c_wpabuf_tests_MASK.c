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
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 struct wpabuf* FUNC3 (int) ; 
 struct wpabuf* FUNC4 (void*,int) ; 
 struct wpabuf* FUNC5 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,int) ; 
 scalar_t__ FUNC8 (struct wpabuf**,int) ; 
 struct wpabuf* FUNC9 (struct wpabuf*,int) ; 

__attribute__((used)) static int FUNC10(void)
{
	int errors = 0;
	void *ptr;
	struct wpabuf *buf;

	FUNC2(MSG_INFO, "wpabuf tests");

	ptr = FUNC1(100);
	if (ptr) {
		buf = FUNC4(ptr, 100);
		if (buf) {
			if (FUNC8(&buf, 100) < 0)
				errors++;
			else
				FUNC7(buf, 100);
			FUNC6(buf);
		} else {
			errors++;
			FUNC0(ptr);
		}
	} else {
		errors++;
	}

	buf = FUNC3(100);
	if (buf) {
		struct wpabuf *buf2;

		FUNC7(buf, 100);
		if (FUNC8(&buf, 100) < 0)
			errors++;
		else
			FUNC7(buf, 100);
		buf2 = FUNC5(buf, NULL);
		if (buf2 != buf)
			errors++;
		FUNC6(buf2);
	} else {
		errors++;
	}

	buf = NULL;
	buf = FUNC9(buf, 10);
	if (buf != NULL)
		errors++;

	if (errors) {
		FUNC2(MSG_ERROR, "%d wpabuf test(s) failed", errors);
		return -1;
	}

	return 0;
}