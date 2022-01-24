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
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,char*) ; 

__attribute__((used)) static void FUNC2(struct wpabuf *xml, const char *name, const char *type,
		    const char *direction)
{
	FUNC0(xml, "<arg name=\"%s\"", name);
	if (type)
		FUNC0(xml, " type=\"%s\"", type);
	if (direction)
		FUNC0(xml, " direction=\"%s\"", direction);
	FUNC1(xml, "/>");
}