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
typedef  enum teap_error_codes { ____Placeholder_teap_error_codes } teap_error_codes ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int TEAP_TLV_ERROR ; 
 int TEAP_TLV_MANDATORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct wpabuf* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int) ; 

struct wpabuf * FUNC4(enum teap_error_codes error)
{
	struct wpabuf *buf;

	buf = FUNC1(4 + 4);
	if (!buf)
		return NULL;
	FUNC0(MSG_DEBUG, "EAP-TEAP: Add Error TLV(Error Code=%d)",
		   error);
	FUNC2(buf, TEAP_TLV_MANDATORY | TEAP_TLV_ERROR);
	FUNC2(buf, 4);
	FUNC3(buf, error);
	return buf;
}