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
struct rad_handle {int out_len; int* out; } ;

/* Variables and functions */
 int MSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct rad_handle*,char*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,void const*,size_t) ; 

__attribute__((used)) static int
FUNC2(struct rad_handle *h, int type, const void *value, size_t len)
{
	if (len > 253) {
		FUNC0(h, "Attribute too long");
		return -1;
	}
	if (h->out_len + 2 + len > MSGSIZE) {
		FUNC0(h, "Maximum message length exceeded");
		return -1;
	}
	h->out[h->out_len++] = type;
	h->out[h->out_len++] = len + 2;
	FUNC1(&h->out[h->out_len], value, len);
	h->out_len += len;
	return 0;
}