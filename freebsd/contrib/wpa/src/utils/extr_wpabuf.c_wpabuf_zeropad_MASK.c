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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 struct wpabuf* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 size_t FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,struct wpabuf*) ; 

struct wpabuf * FUNC6(struct wpabuf *buf, size_t len)
{
	struct wpabuf *ret;
	size_t blen;

	if (buf == NULL)
		return NULL;

	blen = FUNC3(buf);
	if (blen >= len)
		return buf;

	ret = FUNC1(len);
	if (ret) {
		FUNC0(FUNC4(ret, len - blen), 0, len - blen);
		FUNC5(ret, buf);
	}
	FUNC2(buf);

	return ret;
}