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
typedef  char u8 ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,char) ; 

void FUNC2(struct wpabuf *buf, const char *data, int len)
{
	int i;
	for (i = 0; i < len; i++) {
		u8 c = ((u8 *) data)[i];
		if (c == '<') {
			FUNC0(buf, "&lt;");
			continue;
		}
		if (c == '>') {
			FUNC0(buf, "&gt;");
			continue;
		}
		if (c == '&') {
			FUNC0(buf, "&amp;");
			continue;
		}
		if (c == '\'') {
			FUNC0(buf, "&apos;");
			continue;
		}
		if (c == '"') {
			FUNC0(buf, "&quot;");
			continue;
		}
		/*
		 * We could try to represent control characters using the
		 * sequence: &#x; where x is replaced by a hex numeral, but not
		 * clear why we would do this.
		 */
		FUNC1(buf, c);
	}
}