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
 int /*<<< orphan*/  WPA_DBUS_PROPERTIES_GET ; 
 int /*<<< orphan*/  WPA_DBUS_PROPERTIES_GETALL ; 
 int /*<<< orphan*/  WPA_DBUS_PROPERTIES_INTERFACE ; 
 int /*<<< orphan*/  WPA_DBUS_PROPERTIES_SET ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,char*) ; 

__attribute__((used)) static void FUNC3(struct wpabuf *xml)
{
	FUNC1(xml, "<interface name=\"%s\">",
		      WPA_DBUS_PROPERTIES_INTERFACE);

	FUNC1(xml, "<method name=\"%s\">", WPA_DBUS_PROPERTIES_GET);
	FUNC0(xml, "interface", "s", "in");
	FUNC0(xml, "propname", "s", "in");
	FUNC0(xml, "value", "v", "out");
	FUNC2(xml, "</method>");

	FUNC1(xml, "<method name=\"%s\">", WPA_DBUS_PROPERTIES_GETALL);
	FUNC0(xml, "interface", "s", "in");
	FUNC0(xml, "props", "a{sv}", "out");
	FUNC2(xml, "</method>");

	FUNC1(xml, "<method name=\"%s\">", WPA_DBUS_PROPERTIES_SET);
	FUNC0(xml, "interface", "s", "in");
	FUNC0(xml, "propname", "s", "in");
	FUNC0(xml, "value", "v", "in");
	FUNC2(xml, "</method>");

	FUNC2(xml, "</interface>");
}