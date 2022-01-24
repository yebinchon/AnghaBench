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
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_hdr {int /*<<< orphan*/  length; int /*<<< orphan*/  identifier; int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC2 (int) ; 
 struct eap_hdr* FUNC3 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC4(struct eap_sm *sm, u8 id)
{
	struct wpabuf *msg;
	struct eap_hdr *resp;
	FUNC1(MSG_DEBUG, "EAP: Building EAP-Failure (id=%d)", id);

	msg = FUNC2(sizeof(*resp));
	if (msg == NULL)
		return NULL;
	resp = FUNC3(msg, sizeof(*resp));
	resp->code = EAP_CODE_FAILURE;
	resp->identifier = id;
	resp->length = FUNC0(sizeof(*resp));

	return msg;
}