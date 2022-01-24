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
struct eap_tnc_data {int recommendation; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
#define  ALLOW 131 
 int /*<<< orphan*/  DONE ; 
 int /*<<< orphan*/  FAIL ; 
#define  ISOLATE 130 
 int /*<<< orphan*/  MSG_DEBUG ; 
#define  NO_ACCESS 129 
#define  NO_RECOMMENDATION 128 
 struct wpabuf* FUNC0 (struct eap_sm*,struct eap_tnc_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_tnc_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct wpabuf * FUNC3(struct eap_sm *sm,
						    struct eap_tnc_data *data)
{
	switch (data->recommendation) {
	case ALLOW:
		FUNC1(data, DONE);
		break;
	case ISOLATE:
		FUNC1(data, FAIL);
		/* TODO: support assignment to a different VLAN */
		break;
	case NO_ACCESS:
		FUNC1(data, FAIL);
		break;
	case NO_RECOMMENDATION:
		FUNC1(data, DONE);
		break;
	default:
		FUNC2(MSG_DEBUG, "EAP-TNC: Unknown recommendation");
		return NULL;
	}

	return FUNC0(sm, data);
}