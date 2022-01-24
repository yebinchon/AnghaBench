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
struct archive_string {char* s; void* length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct archive_string*,char*,size_t) ; 
 char* FUNC1 (char*,char) ; 
 void* FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(struct archive_string *linkname,
    struct archive_string *pathname)
{
	char *	linkptr;
	size_t 	symlen;

	linkptr = FUNC1(pathname->s, '|');
	if (linkptr != NULL) {
		symlen = FUNC2(linkptr + 1);
		FUNC0(linkname, linkptr+1, symlen);

		*linkptr = 0;
		pathname->length = FUNC2(pathname->s);

		return (1);
	}
	return (0);
}