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
struct rad_handle {scalar_t__ pass_pos; scalar_t__ out_len; size_t pass_len; scalar_t__ pass; } ;

/* Variables and functions */
 size_t PASSSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct rad_handle*) ; 
 int /*<<< orphan*/  FUNC1 (struct rad_handle*,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rad_handle*,int,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC5(struct rad_handle *h, int type, const void *value, size_t len)
{
	int padded_len;
	int pad_len;

	if (h->pass_pos != 0) {
		FUNC1(h, "Multiple User-Password attributes specified");
		return -1;
	}
	if (len > PASSSIZE)
		len = PASSSIZE;
	padded_len = len == 0 ? 16 : (len+15) & ~0xf;
	pad_len = padded_len - len;

	/*
	 * Put in a place-holder attribute containing all zeros, and
	 * remember where it is so we can fill it in later.
	 */
	FUNC0(h);
	FUNC4(h, type, h->pass, padded_len);
	h->pass_pos = h->out_len - padded_len;

	/* Save the cleartext password, padded as necessary */
	FUNC2(h->pass, value, len);
	h->pass_len = len;
	FUNC3(h->pass + len, 0, pad_len);
	return 0;
}