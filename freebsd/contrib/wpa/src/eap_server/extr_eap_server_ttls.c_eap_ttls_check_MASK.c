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
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_TYPE_TTLS ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static Boolean FUNC2(struct eap_sm *sm, void *priv,
			      struct wpabuf *respData)
{
	const u8 *pos;
	size_t len;

	pos = FUNC0(EAP_VENDOR_IETF, EAP_TYPE_TTLS, respData, &len);
	if (pos == NULL || len < 1) {
		FUNC1(MSG_INFO, "EAP-TTLS: Invalid frame");
		return TRUE;
	}

	return FALSE;
}