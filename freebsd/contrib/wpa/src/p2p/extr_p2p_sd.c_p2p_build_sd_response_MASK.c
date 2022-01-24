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
typedef  int /*<<< orphan*/  u16 ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANQP_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  P2P_IE_VENDOR_TYPE ; 
 int /*<<< orphan*/ * FUNC0 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 int FUNC4 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC8(u8 dialog_token, u16 status_code,
					     u16 comeback_delay,
					     u16 update_indic,
					     const struct wpabuf *tlvs)
{
	struct wpabuf *buf;
	u8 *len_pos;

	buf = FUNC1(dialog_token, status_code,
					  comeback_delay,
					  100 + (tlvs ? FUNC4(tlvs) : 0));
	if (buf == NULL)
		return NULL;

	if (tlvs) {
		/* ANQP Query Response Frame */
		len_pos = FUNC0(buf, ANQP_VENDOR_SPECIFIC);
		FUNC5(buf, P2P_IE_VENDOR_TYPE);
		 /* Service Update Indicator */
		FUNC7(buf, update_indic);
		FUNC6(buf, tlvs);
		FUNC2(buf, len_pos);
	}

	FUNC3(buf);

	return buf;
}