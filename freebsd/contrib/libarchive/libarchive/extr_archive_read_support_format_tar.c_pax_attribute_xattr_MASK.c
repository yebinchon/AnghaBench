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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,char*,void*,size_t) ; 
 void* FUNC1 (char const*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 
 int FUNC4 (char const*) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static int
FUNC6(struct archive_entry *entry,
	const char *name, const char *value)
{
	char *name_decoded;
	void *value_decoded;
	size_t value_len;

	if (FUNC4(name) < 18 || (FUNC3(name, "LIBARCHIVE.xattr.", 17)) != 0)
		return 3;

	name += 17;

	/* URL-decode name */
	name_decoded = FUNC5(name);
	if (name_decoded == NULL)
		return 2;

	/* Base-64 decode value */
	value_decoded = FUNC1(value, FUNC4(value), &value_len);
	if (value_decoded == NULL) {
		FUNC2(name_decoded);
		return 1;
	}

	FUNC0(entry, name_decoded,
		value_decoded, value_len);

	FUNC2(name_decoded);
	FUNC2(value_decoded);
	return 0;
}