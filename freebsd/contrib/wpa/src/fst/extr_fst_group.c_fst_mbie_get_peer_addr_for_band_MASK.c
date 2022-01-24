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
typedef  scalar_t__ u8 ;
struct wpabuf {int dummy; } ;
struct multi_band_ie {scalar_t__ eid; int len; scalar_t__ band_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ WLAN_EID_MULTI_BAND ; 
 scalar_t__ const* FUNC0 (struct multi_band_ie const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__* FUNC2 (struct wpabuf const*) ; 
 size_t FUNC3 (struct wpabuf const*) ; 

__attribute__((used)) static const u8 * FUNC4(const struct wpabuf *mbies,
						  u8 band_id)
{
	const u8 *p = FUNC2(mbies);
	size_t s = FUNC3(mbies);

	while (s >= 2) {
		const struct multi_band_ie *mbie =
			(const struct multi_band_ie *) p;

		if (mbie->eid != WLAN_EID_MULTI_BAND) {
			FUNC1(MSG_INFO, "unexpected eid %d", mbie->eid);
			return NULL;
		}

		if (mbie->len < sizeof(*mbie) - 2 || mbie->len > s - 2) {
			FUNC1(MSG_INFO, "invalid mbie len %d",
				   mbie->len);
			return NULL;
		}

		if (mbie->band_id == band_id)
			return FUNC0(mbie);

		p += 2 + mbie->len;
		s -= 2 + mbie->len;
	}

	FUNC1(MSG_INFO, "mbie doesn't contain band %d", band_id);
	return NULL;
}