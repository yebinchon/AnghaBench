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
struct wpa_dbus_object_desc {int /*<<< orphan*/  connection; } ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 char* DBUS_INTROSPECT_1_0_XML_DOCTYPE_DECL_NODE ; 
 int /*<<< orphan*/  DBUS_TYPE_INVALID ; 
 int /*<<< orphan*/  DBUS_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,struct wpa_dbus_object_desc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 struct wpabuf* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 char* FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,char*) ; 

DBusMessage * FUNC11(DBusMessage *message,
				  struct wpa_dbus_object_desc *obj_dsc)
{

	DBusMessage *reply;
	struct wpabuf *xml;

	xml = FUNC7(20000);
	if (xml == NULL)
		return NULL;

	FUNC10(xml, "<?xml version=\"1.0\"?>\n");
	FUNC10(xml, DBUS_INTROSPECT_1_0_XML_DOCTYPE_DECL_NODE);
	FUNC10(xml, "<node>");

	FUNC1(xml);
	FUNC2(xml);
	FUNC3(xml, obj_dsc);
	FUNC0(xml, obj_dsc->connection,
			FUNC5(message));

	FUNC10(xml, "</node>\n");

	reply = FUNC6(message);
	if (reply) {
		const char *intro_str = FUNC9(xml);

		FUNC4(reply, DBUS_TYPE_STRING, &intro_str,
					 DBUS_TYPE_INVALID);
	}
	FUNC8(xml);

	return reply;
}