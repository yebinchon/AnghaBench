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
 int /*<<< orphan*/ * FUNC0 (unsigned char*,size_t,size_t*) ; 
 unsigned char* FUNC1 (char const*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 

br_x509_certificate *
FUNC4(const char *fname, size_t *num)
{
	br_x509_certificate *xcs;
	unsigned char *buf;
	size_t len;

	*num = 0;

	/*
	 * TODO: reading the whole file is crude; we could parse them
	 * in a streamed fashion. But it does not matter much in practice.
	 */
	buf = FUNC1(fname, &len);
	if (buf == NULL) {
		return (NULL);
	}
	xcs = FUNC0(buf, len, num);
	if (xcs == NULL) {
	    FUNC2("ERROR: no certificate in file '%s'\n", fname);
	}
	FUNC3(buf);
	return (xcs);
}