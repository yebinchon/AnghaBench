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
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,size_t*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static size_t
FUNC3(const char *trust)
{
	br_x509_certificate *xcs;
	size_t num;

	xcs = FUNC1(trust, &num);
	if (xcs) {
		num = FUNC2(xcs, num);
	}
#ifdef VE_OPENPGP_SUPPORT
	else if (load_key_file(trust)) {
		num = 1;
	}
#endif
	return (num);
}