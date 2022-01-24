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
struct eap_tnc_data {int /*<<< orphan*/  recommendation; int /*<<< orphan*/  tncs; } ;
typedef  enum tncs_process_res { ____Placeholder_tncs_process_res } tncs_process_res ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOW ; 
 int /*<<< orphan*/  FAIL ; 
 int /*<<< orphan*/  ISOLATE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  NO_ACCESS ; 
 int /*<<< orphan*/  NO_RECOMMENDATION ; 
 int /*<<< orphan*/  RECOMMENDATION ; 
#define  TNCCS_PROCESS_ERROR 132 
#define  TNCCS_RECOMMENDATION_ALLOW 131 
#define  TNCCS_RECOMMENDATION_ISOLATE 130 
#define  TNCCS_RECOMMENDATION_NO_ACCESS 129 
#define  TNCCS_RECOMMENDATION_NO_RECOMMENDATION 128 
 int /*<<< orphan*/  FUNC0 (struct eap_tnc_data*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 

__attribute__((used)) static void FUNC5(struct eap_tnc_data *data, struct wpabuf *inbuf)
{
	enum tncs_process_res res;

	res = FUNC1(data->tncs, FUNC3(inbuf),
				    FUNC4(inbuf));
	switch (res) {
	case TNCCS_RECOMMENDATION_ALLOW:
		FUNC2(MSG_DEBUG, "EAP-TNC: TNCS allowed access");
		FUNC0(data, RECOMMENDATION);
		data->recommendation = ALLOW;
		break;
	case TNCCS_RECOMMENDATION_NO_RECOMMENDATION:
		FUNC2(MSG_DEBUG, "EAP-TNC: TNCS has no recommendation");
		FUNC0(data, RECOMMENDATION);
		data->recommendation = NO_RECOMMENDATION;
		break;
	case TNCCS_RECOMMENDATION_ISOLATE:
		FUNC2(MSG_DEBUG, "EAP-TNC: TNCS requested isolation");
		FUNC0(data, RECOMMENDATION);
		data->recommendation = ISOLATE;
		break;
	case TNCCS_RECOMMENDATION_NO_ACCESS:
		FUNC2(MSG_DEBUG, "EAP-TNC: TNCS rejected access");
		FUNC0(data, RECOMMENDATION);
		data->recommendation = NO_ACCESS;
		break;
	case TNCCS_PROCESS_ERROR:
		FUNC2(MSG_DEBUG, "EAP-TNC: TNCS processing error");
		FUNC0(data, FAIL);
		break;
	default:
		break;
	}
}