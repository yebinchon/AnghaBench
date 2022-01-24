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
typedef  int /*<<< orphan*/  isc_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

isc_result_t
FUNC2(unsigned char *d, unsigned int len, char *out) {

	out[0]='\0';
	char c_ret[] = "AA";
	unsigned int i;
	FUNC1(out, "0x");
	for (i = 0; i < len; i++) {
		FUNC0(c_ret, "%02X", d[i]);
		FUNC1(out, c_ret);
	}
	FUNC1(out, "\0");
	return (ISC_R_SUCCESS);
}