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
struct archive_entry {int dummy; } ;
typedef  scalar_t__ mode_t ;

/* Variables and functions */
 scalar_t__ AE_IFDIR ; 
 scalar_t__ FUNC0 (struct archive_entry*) ; 
 char* FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,char const*,size_t) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(struct archive_entry *entry, unsigned char *p)
{
	const char *path;
	size_t pathlen;
	mode_t type;

	path = FUNC1(entry);
	pathlen = FUNC3(path);
	type = FUNC0(entry);

	FUNC2(p, path, pathlen);

	/* Folders are recognized by a trailing slash. */
	if ((type == AE_IFDIR) & (path[pathlen - 1] != '/')) {
		p[pathlen] = '/';
		p[pathlen + 1] = '\0';
	}
}