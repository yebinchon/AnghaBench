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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dst_addr; } ;
struct wpa_supplicant {TYPE_1__ rrm; int /*<<< orphan*/  lci; int /*<<< orphan*/  lci_time; } ;
struct rrm_measurement_request_element {scalar_t__* variable; int len; int /*<<< orphan*/  type; int /*<<< orphan*/  token; } ;
struct os_reltime {int sec; int usec; } ;

/* Variables and functions */
 int /*<<< orphan*/  LCI_REQ_SUBELEM_MAX_AGE ; 
 scalar_t__ LOCATION_SUBJECT_REMOTE ; 
 int /*<<< orphan*/  MEASUREMENT_REPORT_MODE_ACCEPT ; 
 int /*<<< orphan*/  MEASUREMENT_REPORT_MODE_REJECT_INCAPABLE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (scalar_t__ const*) ; 
 scalar_t__* FUNC1 (scalar_t__ const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct os_reltime*) ; 
 int /*<<< orphan*/  FUNC4 (struct os_reltime*,int /*<<< orphan*/ *,struct os_reltime*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct wpabuf**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct wpa_supplicant *wpa_s,
			  const struct rrm_measurement_request_element *req,
			  struct wpabuf **buf)
{
	u8 subject;
	u16 max_age = 0;
	struct os_reltime t, diff;
	unsigned long diff_l;
	const u8 *subelem;
	const u8 *request = req->variable;
	size_t len = req->len - 3;

	if (len < 1)
		return -1;

	if (!wpa_s->lci)
		goto reject;

	subject = *request++;
	len--;

	FUNC6(MSG_DEBUG, "Measurement request location subject=%u",
		   subject);

	if (subject != LOCATION_SUBJECT_REMOTE) {
		FUNC6(MSG_INFO,
			   "Not building LCI report - bad location subject");
		return 0;
	}

	/* Subelements are formatted exactly like elements */
	FUNC5(MSG_DEBUG, "LCI request subelements", request, len);
	subelem = FUNC1(request, len, LCI_REQ_SUBELEM_MAX_AGE);
	if (subelem && subelem[1] == 2)
		max_age = FUNC0(subelem + 2);

	if (FUNC3(&t))
		goto reject;

	FUNC4(&t, &wpa_s->lci_time, &diff);
	/* LCI age is calculated in 10th of a second units. */
	diff_l = diff.sec * 10 + diff.usec / 100000;

	if (max_age != 0xffff && max_age < diff_l)
		goto reject;

	if (FUNC9(buf, req->token,
				 MEASUREMENT_REPORT_MODE_ACCEPT, req->type,
				 FUNC7(wpa_s->lci),
				 FUNC8(wpa_s->lci)) < 0) {
		FUNC6(MSG_DEBUG, "Failed to add LCI report element");
		return -1;
	}

	return 0;

reject:
	if (!FUNC2(wpa_s->rrm.dst_addr) &&
	    FUNC9(buf, req->token,
				 MEASUREMENT_REPORT_MODE_REJECT_INCAPABLE,
				 req->type, NULL, 0) < 0) {
		FUNC6(MSG_DEBUG, "RRM: Failed to add report element");
		return -1;
	}

	return 0;
}