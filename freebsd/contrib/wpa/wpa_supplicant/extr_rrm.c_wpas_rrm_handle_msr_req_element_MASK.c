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
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dst_addr; } ;
struct wpa_supplicant {int drv_rrm_flags; TYPE_1__ rrm; } ;
struct rrm_measurement_request_element {int type; int mode; int /*<<< orphan*/  token; int /*<<< orphan*/  len; scalar_t__ variable; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEASUREMENT_REPORT_MODE_REJECT_INCAPABLE ; 
 int MEASUREMENT_REQUEST_MODE_DURATION_MANDATORY ; 
 int MEASUREMENT_REQUEST_MODE_ENABLE ; 
 int MEASUREMENT_REQUEST_MODE_PARALLEL ; 
#define  MEASURE_TYPE_BEACON 129 
#define  MEASURE_TYPE_LCI 128 
 int MEASURE_TYPE_RPI_HIST ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int WPA_DRIVER_FLAGS_SUPPORT_SET_SCAN_DWELL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ ,int,void const*,int /*<<< orphan*/ ,struct wpabuf**) ; 
 int FUNC3 (struct wpa_supplicant*,struct rrm_measurement_request_element const*,struct wpabuf**) ; 
 scalar_t__ FUNC4 (struct wpabuf**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(
	struct wpa_supplicant *wpa_s,
	const struct rrm_measurement_request_element *req,
	struct wpabuf **buf)
{
	int duration_mandatory;

	FUNC1(MSG_DEBUG, "Measurement request type %d token %d",
		   req->type, req->token);

	if (req->mode & MEASUREMENT_REQUEST_MODE_ENABLE) {
		/* Enable bit is not supported for now */
		FUNC1(MSG_DEBUG, "RRM: Enable bit not supported, ignore");
		return 0;
	}

	if ((req->mode & MEASUREMENT_REQUEST_MODE_PARALLEL) &&
	    req->type > MEASURE_TYPE_RPI_HIST) {
		/* Parallel measurements are not supported for now */
		FUNC1(MSG_DEBUG,
			   "RRM: Parallel measurements are not supported, reject");
		goto reject;
	}

	duration_mandatory =
		!!(req->mode & MEASUREMENT_REQUEST_MODE_DURATION_MANDATORY);

	switch (req->type) {
	case MEASURE_TYPE_LCI:
		return FUNC3(wpa_s, req, buf);
	case MEASURE_TYPE_BEACON:
		if (duration_mandatory &&
		    !(wpa_s->drv_rrm_flags &
		      WPA_DRIVER_FLAGS_SUPPORT_SET_SCAN_DWELL)) {
			FUNC1(MSG_DEBUG,
				   "RRM: Driver does not support dwell time configuration - reject beacon report with mandatory duration");
			goto reject;
		}
		return FUNC2(wpa_s, req->token,
						 duration_mandatory,
						 (const void *) req->variable,
						 req->len - 3, buf);
	default:
		FUNC1(MSG_INFO,
			   "RRM: Unsupported radio measurement type %u",
			   req->type);
		break;
	}

reject:
	if (!FUNC0(wpa_s->rrm.dst_addr) &&
	    FUNC4(buf, req->token,
				 MEASUREMENT_REPORT_MODE_REJECT_INCAPABLE,
				 req->type, NULL, 0) < 0) {
		FUNC1(MSG_DEBUG, "RRM: Failed to add report element");
		return -1;
	}

	return 0;
}