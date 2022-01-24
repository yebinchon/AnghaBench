#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_size; } ;
typedef  int int64_t ;
struct TYPE_3__ {int nFileSizeLow; scalar_t__ nFileSizeHigh; } ;
typedef  TYPE_1__ BY_HANDLE_FILE_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char*,char const*,long,long) ; 
 int FUNC3 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,TYPE_1__*) ; 

int
FUNC5(const char *file, int line, const char *pathname, long size)
{
	int64_t filesize;
	int r;

	FUNC0(file, line);
#if defined(_WIN32) && !defined(__CYGWIN__)
	{
		BY_HANDLE_FILE_INFORMATION bhfi;
		r = !my_GetFileInformationByName(pathname, &bhfi);
		filesize = ((int64_t)bhfi.nFileSizeHigh << 32) + bhfi.nFileSizeLow;
	}
#else
	{
		struct stat st;
		r = FUNC3(pathname, &st);
		filesize = st.st_size;
	}
#endif
	if (r == 0 && filesize == size)
			return (1);
	FUNC2(file, line, "File %s has size %ld, expected %ld",
	    pathname, (long)filesize, (long)size);
	FUNC1(NULL);
	return (0);
}