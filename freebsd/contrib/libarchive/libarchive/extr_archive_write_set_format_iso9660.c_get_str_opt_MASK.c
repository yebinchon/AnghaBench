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
struct archive_write {int /*<<< orphan*/  archive; } ;
struct archive_string {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,size_t,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_string*,char const*) ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3(struct archive_write *a, struct archive_string *s,
    size_t maxsize, const char *key, const char *value)
{

	if (FUNC2(value) > maxsize) {
		FUNC0(&a->archive, ARCHIVE_ERRNO_MISC,
		    "Value is longer than %zu characters "
		    "for option ``%s''", maxsize, key);
		return (ARCHIVE_FATAL);
	}
	FUNC1(s, value);
	return (ARCHIVE_OK);
}