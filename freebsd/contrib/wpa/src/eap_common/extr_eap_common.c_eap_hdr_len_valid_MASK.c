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
struct eap_hdr {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct eap_hdr* FUNC2 (struct wpabuf const*) ; 
 size_t FUNC3 (struct wpabuf const*) ; 

int FUNC4(const struct wpabuf *msg, size_t min_payload)
{
	const struct eap_hdr *hdr;
	size_t len;

	if (msg == NULL)
		return 0;

	hdr = FUNC2(msg);

	if (FUNC3(msg) < sizeof(*hdr)) {
		FUNC1(MSG_INFO, "EAP: Too short EAP frame");
		return 0;
	}

	len = FUNC0(hdr->length);
	if (len < sizeof(*hdr) + min_payload || len > FUNC3(msg)) {
		FUNC1(MSG_INFO, "EAP: Invalid EAP length");
		return 0;
	}

	return 1;
}