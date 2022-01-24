#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wps_event_ {int subscriber_sequence; int /*<<< orphan*/  data; TYPE_2__* s; TYPE_1__* addr; } ;
struct wpabuf {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  uuid; } ;
struct TYPE_3__ {int path; int domain_and_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct wpabuf* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,char*,int) ; 
 char* FUNC5 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,char*) ; 

__attribute__((used)) static struct wpabuf * FUNC8(struct wps_event_ *e)
{
	struct wpabuf *buf;
	char *b;

	buf = FUNC2(1000 + FUNC3(e->data));
	if (buf == NULL)
		return NULL;
	FUNC4(buf, "NOTIFY %s HTTP/1.1\r\n", e->addr->path);
	FUNC7(buf, "SERVER: Unspecified, UPnP/1.0, Unspecified\r\n");
	FUNC4(buf, "HOST: %s\r\n", e->addr->domain_and_port);
	FUNC7(buf, "CONTENT-TYPE: text/xml; charset=\"utf-8\"\r\n"
		       "NT: upnp:event\r\n"
		       "NTS: upnp:propchange\r\n");
	FUNC7(buf, "SID: uuid:");
	b = FUNC5(buf, 0);
	FUNC1(e->s->uuid, b, 80);
	FUNC5(buf, FUNC0(b));
	FUNC7(buf, "\r\n");
	FUNC4(buf, "SEQ: %u\r\n", e->subscriber_sequence);
	FUNC4(buf, "CONTENT-LENGTH: %d\r\n",
		      (int) FUNC3(e->data));
	FUNC7(buf, "\r\n"); /* terminating empty line */
	FUNC6(buf, e->data);
	return buf;
}