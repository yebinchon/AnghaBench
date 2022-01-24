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
struct wps_er {unsigned int event_id; } ;
struct http_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 unsigned int FUNC0 (char*) ; 
 char* FUNC1 (struct http_request*) ; 
 char* FUNC2 (char*,char) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct wps_er*,struct http_request*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct http_request*) ; 

__attribute__((used)) static void FUNC7(struct wps_er *er, struct http_request *req)
{
	char *uri = FUNC1(req);

	if (FUNC3(uri, "/event/", 7) == 0) {
		unsigned int event_id;
		char *pos;
		event_id = FUNC0(uri + 7);
		if (event_id != er->event_id) {
			FUNC4(MSG_DEBUG, "WPS ER: HTTP event for an "
				   "unknown event id %u", event_id);
			return;
		}
		pos = FUNC2(uri + 7, '/');
		if (pos == NULL)
			return;
		pos++;
		FUNC5(er, req, FUNC0(pos));
	} else {
		FUNC4(MSG_DEBUG, "WPS ER: Unknown HTTP NOTIFY for '%s'",
			   uri);
		FUNC6(req);
	}
}