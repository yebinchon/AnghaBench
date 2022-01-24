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
struct stat {int st_mode; } ;
typedef  scalar_t__ isc_result_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ISC_R_FILENOTFOUND ; 
 scalar_t__ ISC_R_INVALIDFILE ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int S_IFREG ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (char const*,struct stat*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,int,int) ; 

isc_result_t
FUNC6(const char *filename, FILE **fp) {
	isc_result_t result;
	int flags;
	struct stat sb;
	FILE *f;
	int fd;

	FUNC0(filename != NULL);
	FUNC0(fp != NULL && *fp == NULL);

	result = FUNC3(filename, &sb);
	if (result == ISC_R_SUCCESS) {
		if ((sb.st_mode & S_IFREG) == 0)
			return (ISC_R_INVALIDFILE);
		flags = O_WRONLY | O_TRUNC;
	} else if (result == ISC_R_FILENOTFOUND) {
		flags = O_WRONLY | O_CREAT | O_EXCL;
	} else
		return (result);

	fd = FUNC5(filename, flags, S_IRUSR | S_IWUSR);
	if (fd == -1)
		return (FUNC4(errno));

	f = FUNC2(fd, "w");
	if (f == NULL) {
		result = FUNC4(errno);
		FUNC1(fd);
		return (result);
	}

	*fp = f;
	return (ISC_R_SUCCESS);
}