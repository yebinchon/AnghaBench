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
struct pax {int /*<<< orphan*/  pax_header; int /*<<< orphan*/  sconv_utf8; } ;
struct archive_write {int /*<<< orphan*/  archive; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_ENTRY_ACL_TYPE_ACCESS ; 
 int ARCHIVE_ENTRY_ACL_TYPE_DEFAULT ; 
 int ARCHIVE_ENTRY_ACL_TYPE_NFS4 ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char*) ; 
 char* FUNC1 (struct archive_entry*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,char*,char*,char const*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(struct archive_write *a,
    struct archive_entry *entry, struct pax *pax, int flags)
{
	char *p;
	const char *attr;
	int acl_types;

	acl_types = FUNC2(entry);

	if ((acl_types & ARCHIVE_ENTRY_ACL_TYPE_NFS4) != 0)
		attr = "SCHILY.acl.ace";
	else if ((flags & ARCHIVE_ENTRY_ACL_TYPE_ACCESS) != 0)
		attr = "SCHILY.acl.access";
	else if ((flags & ARCHIVE_ENTRY_ACL_TYPE_DEFAULT) != 0)
		attr = "SCHILY.acl.default";
	else
		return (ARCHIVE_FATAL);

	p = FUNC1(entry, NULL, flags, pax->sconv_utf8);
	if (p == NULL) {
		if (errno == ENOMEM) {
			FUNC3(&a->archive, ENOMEM, "%s %s",
			    "Can't allocate memory for ", attr);
			return (ARCHIVE_FATAL);
		}
		FUNC3(&a->archive,
		    ARCHIVE_ERRNO_FILE_FORMAT, "%s %s %s",
		    "Can't translate ", attr, " to UTF-8");
		return(ARCHIVE_WARN);
	}

	if (*p != '\0') {
		FUNC0(&(pax->pax_header),
		    attr, p);
	}
	FUNC4(p);
	return(ARCHIVE_OK);
}