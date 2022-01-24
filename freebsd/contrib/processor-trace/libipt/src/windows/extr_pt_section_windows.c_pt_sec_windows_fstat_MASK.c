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
struct _stat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  _O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct _stat*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int pte_bad_file ; 
 int pte_internal ; 

__attribute__((used)) static int FUNC3(const char *filename, struct _stat *stat)
{
	int fd, errcode;

	if (!filename || !stat)
		return -pte_internal;

	fd = FUNC2(filename, _O_RDONLY);
	if (fd == -1)
		return -pte_bad_file;

	errcode = FUNC1(fd, stat);

	FUNC0(fd);

	if (errcode)
		return -pte_bad_file;

	return 0;
}