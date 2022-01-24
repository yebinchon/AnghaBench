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
struct rad_handle {scalar_t__* out; int chap_pass; int eap_msg; int /*<<< orphan*/  out_created; } ;

/* Variables and functions */
 size_t POS_CODE ; 
 scalar_t__ RAD_ACCOUNTING_REQUEST ; 
 int RAD_CHAP_PASSWORD ; 
 int RAD_EAP_MESSAGE ; 
 int RAD_MESSAGE_AUTHENTIC ; 
 int RAD_USER_PASSWORD ; 
 int /*<<< orphan*/  FUNC0 (struct rad_handle*,char*) ; 
 int FUNC1 (struct rad_handle*,int,void const*,size_t) ; 
 int FUNC2 (struct rad_handle*,int,void const*,size_t) ; 
 int FUNC3 (struct rad_handle*) ; 

int
FUNC4(struct rad_handle *h, int type, const void *value, size_t len)
{
	int result;

	if (!h->out_created) {
		FUNC0(h, "Please call rad_create_request()"
		    " before putting attributes");
		return -1;
	}

	if (h->out[POS_CODE] == RAD_ACCOUNTING_REQUEST) {
		if (type == RAD_EAP_MESSAGE) {
			FUNC0(h, "EAP-Message attribute is not valid"
			    " in accounting requests");
			return -1;
		}
	}

	/*
	 * When proxying EAP Messages, the Message Authenticator
	 * MUST be present; see RFC 3579.
	 */
	if (type == RAD_EAP_MESSAGE) {
		if (FUNC3(h) == -1)
			return -1;
	}

	if (type == RAD_USER_PASSWORD) {
		result = FUNC1(h, type, value, len);
	} else if (type == RAD_MESSAGE_AUTHENTIC) {
		result = FUNC3(h);
	} else {
		result = FUNC2(h, type, value, len);
		if (result == 0) {
			if (type == RAD_CHAP_PASSWORD)
				h->chap_pass = 1;
			else if (type == RAD_EAP_MESSAGE)
				h->eap_msg = 1;
		}
	}

	return result;
}