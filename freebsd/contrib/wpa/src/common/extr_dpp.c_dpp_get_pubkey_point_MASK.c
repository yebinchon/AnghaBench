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
struct wpabuf {int /*<<< orphan*/  used; } ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  POINT_CONVERSION_UNCOMPRESSED ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char**) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 struct wpabuf* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 unsigned char* FUNC8 (struct wpabuf*) ; 
 unsigned char* FUNC9 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC10(EVP_PKEY *pkey, int prefix)
{
	int len, res;
	EC_KEY *eckey;
	struct wpabuf *buf;
	unsigned char *pos;

	eckey = FUNC2(pkey);
	if (!eckey)
		return NULL;
	FUNC1(eckey, POINT_CONVERSION_UNCOMPRESSED);
	len = FUNC3(eckey, NULL);
	if (len <= 0) {
		FUNC5(MSG_ERROR,
			   "DDP: Failed to determine public key encoding length");
		FUNC0(eckey);
		return NULL;
	}

	buf = FUNC6(len);
	if (!buf) {
		FUNC0(eckey);
		return NULL;
	}

	pos = FUNC9(buf, len);
	res = FUNC3(eckey, &pos);
	FUNC0(eckey);
	if (res != len) {
		FUNC5(MSG_ERROR,
			   "DDP: Failed to encode public key (res=%d/%d)",
			   res, len);
		FUNC7(buf);
		return NULL;
	}

	if (!prefix) {
		/* Remove 0x04 prefix to match DPP definition */
		pos = FUNC8(buf);
		FUNC4(pos, pos + 1, len - 1);
		buf->used--;
	}

	return buf;
}