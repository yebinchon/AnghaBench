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
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC1 (char const*) ; 
 struct wpabuf* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,size_t) ; 

struct wpabuf * FUNC5(const char *buf)
{
	size_t len;
	struct wpabuf *ret;

	len = FUNC1(buf);
	if (len & 0x01)
		return NULL;
	len /= 2;

	ret = FUNC2(len);
	if (ret == NULL)
		return NULL;

	if (FUNC0(buf, FUNC4(ret, len), len)) {
		FUNC3(ret);
		return NULL;
	}

	return ret;
}