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
struct ttls_parse_avp {int dummy; } ;
struct ttls_avp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int FUNC0 (int /*<<< orphan*/ *,size_t,struct ttls_parse_avp*) ; 
 int /*<<< orphan*/  FUNC1 (struct ttls_parse_avp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long) ; 
 size_t FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC5 (struct wpabuf*) ; 

__attribute__((used)) static int FUNC6(struct wpabuf *in_decrypted,
			       struct ttls_parse_avp *parse)
{
	u8 *pos;
	size_t left, pad;
	int avp_length;

	pos = FUNC5(in_decrypted);
	left = FUNC4(in_decrypted);
	FUNC2(MSG_DEBUG, "EAP-TTLS: Decrypted Phase 2 AVPs", pos, left);
	if (left < sizeof(struct ttls_avp)) {
		FUNC3(MSG_WARNING, "EAP-TTLS: Too short Phase 2 AVP frame"
			   " len=%lu expected %lu or more - dropped",
			   (unsigned long) left,
			   (unsigned long) sizeof(struct ttls_avp));
		return -1;
	}

	/* Parse AVPs */
	FUNC1(parse, 0, sizeof(*parse));

	while (left > 0) {
		avp_length = FUNC0(pos, left, parse);
		if (avp_length < 0)
			return -1;

		pad = (4 - (avp_length & 3)) & 3;
		pos += avp_length + pad;
		if (left < avp_length + pad)
			left = 0;
		else
			left -= avp_length + pad;
	}

	return 0;
}