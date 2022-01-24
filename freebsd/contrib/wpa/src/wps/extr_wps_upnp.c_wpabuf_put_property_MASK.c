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
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,char const*) ; 

__attribute__((used)) static void FUNC2(struct wpabuf *buf, const char *name,
				const char *value)
{
	FUNC1(buf, "<e:property>");
	FUNC0(buf, "<%s>", name);
	if (value)
		FUNC1(buf, value);
	FUNC0(buf, "</%s>", name);
	FUNC1(buf, "</e:property>\n");
}