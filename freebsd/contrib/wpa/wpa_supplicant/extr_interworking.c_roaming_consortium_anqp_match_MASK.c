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
typedef  int u8 ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int const*,int const*,size_t) ; 
 int* FUNC1 (struct wpabuf const*) ; 
 int FUNC2 (struct wpabuf const*) ; 

__attribute__((used)) static int FUNC3(const struct wpabuf *anqp,
					 const u8 *rc_id, size_t rc_len)
{
	const u8 *pos, *end;
	u8 len;

	if (anqp == NULL)
		return 0;

	pos = FUNC1(anqp);
	end = pos + FUNC2(anqp);

	/* Set of <OI Length, OI> duples */
	while (pos < end) {
		len = *pos++;
		if (len > end - pos)
			break;
		if (len == rc_len && FUNC0(pos, rc_id, rc_len) == 0)
			return 1;
		pos += len;
	}

	return 0;
}