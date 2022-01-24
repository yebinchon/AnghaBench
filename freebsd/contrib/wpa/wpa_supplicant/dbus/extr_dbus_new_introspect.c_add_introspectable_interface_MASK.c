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
 int /*<<< orphan*/  WPA_DBUS_INTROSPECTION_INTERFACE ; 
 int /*<<< orphan*/  WPA_DBUS_INTROSPECTION_METHOD ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct wpabuf *xml)
{
	FUNC0(xml, "<interface name=\"%s\">"
		      "<method name=\"%s\">"
		      "<arg name=\"data\" type=\"s\" direction=\"out\"/>"
		      "</method>"
		      "</interface>",
		      WPA_DBUS_INTROSPECTION_INTERFACE,
		      WPA_DBUS_INTROSPECTION_METHOD);
}