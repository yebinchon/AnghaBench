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
typedef  int /*<<< orphan*/  vendor_id ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct radius_msg {int dummy; } ;
struct radius_attr_vendor {int vendor_length; int /*<<< orphan*/  vendor_type; } ;
struct radius_attr_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  salt ;

/* Variables and functions */
 int /*<<< orphan*/  RADIUS_ATTR_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  RADIUS_VENDOR_ATTR_MS_MPPE_RECV_KEY ; 
 int /*<<< orphan*/  RADIUS_VENDOR_ATTR_MS_MPPE_SEND_KEY ; 
 int /*<<< orphan*/  RADIUS_VENDOR_ID_MICROSOFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,size_t,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct radius_attr_hdr* FUNC7 (struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int FUNC8(struct radius_msg *msg,
			     const u8 *req_authenticator,
			     const u8 *secret, size_t secret_len,
			     const u8 *send_key, size_t send_key_len,
			     const u8 *recv_key, size_t recv_key_len)
{
	struct radius_attr_hdr *attr;
	u32 vendor_id = FUNC2(RADIUS_VENDOR_ID_MICROSOFT);
	u8 *buf;
	struct radius_attr_vendor *vhdr;
	u8 *pos;
	size_t elen;
	int hlen;
	u16 salt;

	hlen = sizeof(vendor_id) + sizeof(*vhdr) + 2;

	/* MS-MPPE-Send-Key */
	buf = FUNC5(hlen + send_key_len + 16);
	if (buf == NULL) {
		return 0;
	}
	pos = buf;
	FUNC6(pos, &vendor_id, sizeof(vendor_id));
	pos += sizeof(vendor_id);
	vhdr = (struct radius_attr_vendor *) pos;
	vhdr->vendor_type = RADIUS_VENDOR_ATTR_MS_MPPE_SEND_KEY;
	pos = (u8 *) (vhdr + 1);
	if (FUNC4((u8 *) &salt, sizeof(salt)) < 0) {
		FUNC3(buf);
		return 0;
	}
	salt |= 0x8000;
	FUNC0(pos, salt);
	pos += 2;
	FUNC1(send_key, send_key_len, salt, req_authenticator, secret,
		       secret_len, pos, &elen);
	vhdr->vendor_length = hlen + elen - sizeof(vendor_id);

	attr = FUNC7(msg, RADIUS_ATTR_VENDOR_SPECIFIC,
				   buf, hlen + elen);
	FUNC3(buf);
	if (attr == NULL) {
		return 0;
	}

	/* MS-MPPE-Recv-Key */
	buf = FUNC5(hlen + recv_key_len + 16);
	if (buf == NULL) {
		return 0;
	}
	pos = buf;
	FUNC6(pos, &vendor_id, sizeof(vendor_id));
	pos += sizeof(vendor_id);
	vhdr = (struct radius_attr_vendor *) pos;
	vhdr->vendor_type = RADIUS_VENDOR_ATTR_MS_MPPE_RECV_KEY;
	pos = (u8 *) (vhdr + 1);
	salt ^= 1;
	FUNC0(pos, salt);
	pos += 2;
	FUNC1(recv_key, recv_key_len, salt, req_authenticator, secret,
		       secret_len, pos, &elen);
	vhdr->vendor_length = hlen + elen - sizeof(vendor_id);

	attr = FUNC7(msg, RADIUS_ATTR_VENDOR_SPECIFIC,
				   buf, hlen + elen);
	FUNC3(buf);
	if (attr == NULL) {
		return 0;
	}

	return 1;
}