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
struct archive_cmdline {char* path; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 char* FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3(struct archive_cmdline *data, const char *path)
{
	char *newptr;

	newptr = FUNC0(data->path, FUNC2(path) + 1);
	if (newptr == NULL)
		return (ARCHIVE_FATAL);
	data->path = newptr;
	FUNC1(data->path, path);
	return (ARCHIVE_OK);
}