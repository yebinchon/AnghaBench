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
typedef  int /*<<< orphan*/  isc_offset_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int _O_BINARY ; 
 int _O_RDWR ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int) ; 

isc_result_t
FUNC5(const char *filename, isc_offset_t size) {
	int fh;

	FUNC0(filename != NULL && size >= 0);

	if ((fh = FUNC4(filename, _O_RDWR | _O_BINARY)) < 0)
		return (FUNC3(errno));

	if(FUNC1(fh, size) != 0) {
		FUNC2(fh);
		return (FUNC3(errno));
	}
	FUNC2(fh);

	return (ISC_R_SUCCESS);
}