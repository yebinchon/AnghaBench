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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  isc_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_INVALIDFILE ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct stat*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char const*,struct stat*) ; 

isc_result_t
FUNC4(const char *filename) {
	/*
	 * This function returns success if filename is a plain file.
	 */
	struct stat filestat;
	FUNC2(&filestat,0,sizeof(struct stat));

	if ((FUNC3(filename, &filestat)) == -1)
		return(FUNC1(errno));

	if(! FUNC0(filestat.st_mode))
		return(ISC_R_INVALIDFILE);

	return(ISC_R_SUCCESS);
}