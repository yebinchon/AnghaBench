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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_driver_privsep_data {int /*<<< orphan*/  ctx; } ;
struct sockaddr_un {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  from ;
typedef  enum privsep_event { ____Placeholder_privsep_event } privsep_event ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_ASSOC ; 
 int /*<<< orphan*/  EVENT_ASSOCINFO ; 
 int /*<<< orphan*/  EVENT_DISASSOC ; 
 int /*<<< orphan*/  EVENT_SCAN_RESULTS ; 
 int /*<<< orphan*/  EVENT_SCAN_STARTED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
#define  PRIVSEP_EVENT_ASSOC 138 
#define  PRIVSEP_EVENT_ASSOCINFO 137 
#define  PRIVSEP_EVENT_AUTH 136 
#define  PRIVSEP_EVENT_DISASSOC 135 
#define  PRIVSEP_EVENT_FT_RESPONSE 134 
#define  PRIVSEP_EVENT_INTERFACE_STATUS 133 
#define  PRIVSEP_EVENT_MICHAEL_MIC_FAILURE 132 
#define  PRIVSEP_EVENT_PMKID_CANDIDATE 131 
#define  PRIVSEP_EVENT_RX_EAPOL 130 
#define  PRIVSEP_EVENT_SCAN_RESULTS 129 
#define  PRIVSEP_EVENT_SCAN_STARTED 128 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t const) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ *,size_t const,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(int sock, void *eloop_ctx,
				       void *sock_ctx)
{
	struct wpa_driver_privsep_data *drv = eloop_ctx;
	u8 *buf, *event_buf;
	size_t event_len;
	int res, event;
	enum privsep_event e;
	struct sockaddr_un from;
	socklen_t fromlen = sizeof(from);
	const size_t buflen = 2000;

	buf = FUNC1(buflen);
	if (buf == NULL)
		return;
	res = FUNC3(sock, buf, buflen, 0,
		       (struct sockaddr *) &from, &fromlen);
	if (res < 0) {
		FUNC12(MSG_ERROR, "recvfrom(priv_socket): %s",
			   FUNC4(errno));
		FUNC0(buf);
		return;
	}

	FUNC12(MSG_DEBUG, "privsep_driver: received %u bytes", res);

	if (res < (int) sizeof(int)) {
		FUNC12(MSG_DEBUG, "Too short event message (len=%d)", res);
		return;
	}

	FUNC2(&event, buf, sizeof(int));
	event_buf = &buf[sizeof(int)];
	event_len = res - sizeof(int);
	FUNC12(MSG_DEBUG, "privsep: Event %d received (len=%lu)",
		   event, (unsigned long) event_len);

	e = event;
	switch (e) {
	case PRIVSEP_EVENT_SCAN_RESULTS:
		FUNC13(drv->ctx, EVENT_SCAN_RESULTS, NULL);
		break;
	case PRIVSEP_EVENT_SCAN_STARTED:
		FUNC13(drv->ctx, EVENT_SCAN_STARTED, NULL);
		break;
	case PRIVSEP_EVENT_ASSOC:
		FUNC5(drv->ctx, EVENT_ASSOC,
					       event_buf, event_len);
		break;
	case PRIVSEP_EVENT_DISASSOC:
		FUNC13(drv->ctx, EVENT_DISASSOC, NULL);
		break;
	case PRIVSEP_EVENT_ASSOCINFO:
		FUNC5(drv->ctx, EVENT_ASSOCINFO,
					       event_buf, event_len);
		break;
	case PRIVSEP_EVENT_MICHAEL_MIC_FAILURE:
		FUNC9(
			drv->ctx, event_buf, event_len);
		break;
	case PRIVSEP_EVENT_INTERFACE_STATUS:
		FUNC8(drv->ctx, event_buf,
							  event_len);
		break;
	case PRIVSEP_EVENT_PMKID_CANDIDATE:
		FUNC10(drv->ctx, event_buf,
							 event_len);
		break;
	case PRIVSEP_EVENT_FT_RESPONSE:
		FUNC7(drv->ctx, event_buf,
						     event_len);
		break;
	case PRIVSEP_EVENT_RX_EAPOL:
		FUNC11(drv->ctx, event_buf,
						  event_len);
		break;
	case PRIVSEP_EVENT_AUTH:
		FUNC6(drv->ctx, event_buf, event_len);
		break;
	}

	FUNC0(buf);
}