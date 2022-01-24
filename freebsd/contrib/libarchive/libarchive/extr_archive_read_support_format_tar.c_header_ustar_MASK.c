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
struct archive_string {char* s; } ;
struct tar {int entry_padding; int entry_bytes_remaining; int /*<<< orphan*/  sconv; struct archive_string entry_pathname; } ;
struct archive_read {int dummy; } ;
struct archive_entry_header_ustar {char* typeflag; int /*<<< orphan*/  rdevminor; int /*<<< orphan*/  rdevmajor; int /*<<< orphan*/  gname; int /*<<< orphan*/  uname; scalar_t__* name; scalar_t__* prefix; } ;
struct archive_entry {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 scalar_t__ FUNC0 (struct archive_entry*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct archive_entry*,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct archive_entry*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_string*,char) ; 
 int FUNC6 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_string*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_string*,scalar_t__*,int) ; 
 int FUNC9 (struct archive_read*,struct tar*,struct archive_entry*,void const*) ; 
 int FUNC10 (struct archive_read*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC12(struct archive_read *a, struct tar *tar,
    struct archive_entry *entry, const void *h)
{
	const struct archive_entry_header_ustar	*header;
	struct archive_string *as;
	int err = ARCHIVE_OK, r;

	header = (const struct archive_entry_header_ustar *)h;

	/* Copy name into an internal buffer to ensure null-termination. */
	as = &(tar->entry_pathname);
	if (header->prefix[0]) {
		FUNC8(as, header->prefix, sizeof(header->prefix));
		if (as->s[FUNC6(as) - 1] != '/')
			FUNC5(as, '/');
		FUNC7(as, header->name, sizeof(header->name));
	} else {
		FUNC8(as, header->name, sizeof(header->name));
	}
	if (FUNC1(entry, as->s, FUNC6(as),
	    tar->sconv) != 0) {
		err = FUNC10(a, tar->sconv, "Pathname");
		if (err == ARCHIVE_FATAL)
			return (err);
	}

	/* Handle rest of common fields. */
	r = FUNC9(a, tar, entry, h);
	if (r == ARCHIVE_FATAL)
		return (r);
	if (r < err)
		err = r;

	/* Handle POSIX ustar fields. */
	if (FUNC2(entry,
	    header->uname, sizeof(header->uname), tar->sconv) != 0) {
		err = FUNC10(a, tar->sconv, "Uname");
		if (err == ARCHIVE_FATAL)
			return (err);
	}

	if (FUNC0(entry,
	    header->gname, sizeof(header->gname), tar->sconv) != 0) {
		err = FUNC10(a, tar->sconv, "Gname");
		if (err == ARCHIVE_FATAL)
			return (err);
	}

	/* Parse out device numbers only for char and block specials. */
	if (header->typeflag[0] == '3' || header->typeflag[0] == '4') {
		FUNC3(entry, (dev_t)
		    FUNC11(header->rdevmajor, sizeof(header->rdevmajor)));
		FUNC4(entry, (dev_t)
		    FUNC11(header->rdevminor, sizeof(header->rdevminor)));
	}

	tar->entry_padding = 0x1ff & (-tar->entry_bytes_remaining);

	return (err);
}