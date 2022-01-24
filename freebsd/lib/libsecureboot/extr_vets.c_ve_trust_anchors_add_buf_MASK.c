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
typedef  int /*<<< orphan*/  br_x509_certificate ;

/* Variables and functions */
 size_t FUNC0 (unsigned char*,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned char*,size_t,size_t*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,size_t) ; 

size_t
FUNC3(unsigned char *buf, size_t len)
{
	br_x509_certificate *xcs;
	size_t num;

	num = 0;
	xcs = FUNC1(buf, len, &num);
	if (xcs != NULL) {
		num = FUNC2(xcs, num);
#ifdef VE_OPENPGP_SUPPORT
	} else {
		num = openpgp_trust_add_buf(buf, len);
#endif
	}
	return (num);
}