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
struct mtree_option {char* value; struct mtree_option* next; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct mtree_option*) ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC4(struct archive_read *a, struct mtree_option **global,
    const char *value, size_t len)
{
	struct mtree_option *opt;

	if ((opt = FUNC2(sizeof(*opt))) == NULL) {
		FUNC0(&a->archive, errno, "Can't allocate memory");
		return (ARCHIVE_FATAL);
	}
	if ((opt->value = FUNC2(len + 1)) == NULL) {
		FUNC1(opt);
		FUNC0(&a->archive, errno, "Can't allocate memory");
		return (ARCHIVE_FATAL);
	}
	FUNC3(opt->value, value, len);
	opt->value[len] = '\0';
	opt->next = *global;
	*global = opt;
	return (ARCHIVE_OK);
}