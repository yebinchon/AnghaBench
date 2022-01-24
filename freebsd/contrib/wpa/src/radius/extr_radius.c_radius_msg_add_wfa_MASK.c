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
struct radius_msg {int dummy; } ;
struct radius_attr_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADIUS_ATTR_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  RADIUS_VENDOR_ID_WFA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 struct radius_attr_hdr* FUNC4 (struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

int FUNC5(struct radius_msg *msg, u8 subtype, const u8 *data,
		       size_t len)
{
	struct radius_attr_hdr *attr;
	u8 *buf, *pos;
	size_t alen;

	alen = 4 + 2 + len;
	buf = FUNC2(alen);
	if (buf == NULL)
		return 0;
	pos = buf;
	FUNC0(pos, RADIUS_VENDOR_ID_WFA);
	pos += 4;
	*pos++ = subtype;
	*pos++ = 2 + len;
	FUNC3(pos, data, len);
	attr = FUNC4(msg, RADIUS_ATTR_VENDOR_SPECIFIC,
				   buf, alen);
	FUNC1(buf);
	if (attr == NULL)
		return 0;

	return 1;
}