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
typedef  enum wps_attribute { ____Placeholder_wps_attribute } wps_attribute ;

/* Variables and functions */
 size_t FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,char) ; 
 int FUNC4 (struct wpabuf*) ; 

__attribute__((used)) static int FUNC5(struct wpabuf *buf, enum wps_attribute attr,
			      const char *val)
{
	size_t len;

	len = val ? FUNC0(val) : 0;
	if (FUNC4(buf) < 4 + len)
		return -1;
	FUNC1(buf, attr);
#ifndef CONFIG_WPS_STRICT
	if (len == 0) {
		/*
		 * Some deployed WPS implementations fail to parse zeor-length
		 * attributes. As a workaround, send a space character if the
		 * device attribute string is empty.
		 */
		if (FUNC4(buf) < 3)
			return -1;
		FUNC1(buf, 1);
		FUNC3(buf, ' ');
		return 0;
	}
#endif /* CONFIG_WPS_STRICT */
	FUNC1(buf, len);
	if (val)
		FUNC2(buf, val, len);
	return 0;
}