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
struct archive_string {char* s; int length; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 char* _PATH_TMP ; 
 int /*<<< orphan*/  FUNC0 (struct archive_string*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_string*,char const*) ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(struct archive_string *temppath)
{
	const char *tmp;

	tmp = FUNC2("TMPDIR");
	if (tmp == NULL)
#ifdef _PATH_TMP
		tmp = _PATH_TMP;
#else
                tmp = "/tmp";
#endif
	FUNC1(temppath, tmp);
	if (temppath->s[temppath->length-1] != '/')
		FUNC0(temppath, '/');
	return (ARCHIVE_OK);
}