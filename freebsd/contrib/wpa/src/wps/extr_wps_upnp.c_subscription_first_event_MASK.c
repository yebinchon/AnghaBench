#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  txt ;
struct wpabuf {int dummy; } ;
struct subscription {TYPE_1__* sm; } ;
struct TYPE_2__ {char* wlanevent; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct wpabuf* FUNC1 () ; 
 int FUNC2 (struct subscription*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*,char const*) ; 

__attribute__((used)) static int FUNC12(struct subscription *s)
{
	/*
	 * Actually, utf-8 is the default, but it doesn't hurt to specify it.
	 *
	 * APStatus is apparently a bit set,
	 * 0x1 = configuration change (but is always set?)
	 * 0x10 = ap is locked
	 *
	 * Per UPnP spec, we send out the last value of each variable, even
	 * for WLANEvent, whatever it was.
	 */
	char *wlan_event;
	struct wpabuf *buf;
	int ap_status = 1;      /* TODO: add 0x10 if access point is locked */
	const char *head =
		"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
		"<e:propertyset xmlns:e=\"urn:schemas-upnp-org:event-1-0\">\n";
	const char *tail = "</e:propertyset>\n";
	char txt[10];
	int ret;

	if (s->sm->wlanevent == NULL) {
		/*
		 * There has been no events before the subscription. However,
		 * UPnP device architecture specification requires all the
		 * evented variables to be included, so generate a dummy event
		 * for this particular case using a WSC_ACK and all-zeros
		 * nonces. The ER (UPnP control point) will ignore this, but at
		 * least it will learn that WLANEvent variable will be used in
		 * event notifications in the future.
		 */
		struct wpabuf *msg;
		FUNC5(MSG_DEBUG, "WPS UPnP: Use a fake WSC_ACK as the "
			   "initial WLANEvent");
		msg = FUNC1();
		if (msg) {
			s->sm->wlanevent = (char *)
				FUNC0(FUNC8(msg),
					      FUNC9(msg), NULL);
			FUNC7(msg);
		}
	}

	wlan_event = s->sm->wlanevent;
	if (wlan_event == NULL || *wlan_event == '\0') {
		FUNC5(MSG_DEBUG, "WPS UPnP: WLANEvent not known for "
			   "initial event message");
		wlan_event = "";
	}
	buf = FUNC6(500 + FUNC4(wlan_event));
	if (buf == NULL)
		return -1;

	FUNC11(buf, head);
	FUNC10(buf, "STAStatus", "1");
	FUNC3(txt, sizeof(txt), "%d", ap_status);
	FUNC10(buf, "APStatus", txt);
	if (*wlan_event)
		FUNC10(buf, "WLANEvent", wlan_event);
	FUNC11(buf, tail);

	ret = FUNC2(s, buf, 0);
	if (ret) {
		FUNC7(buf);
		return ret;
	}
	FUNC7(buf);

	return 0;
}