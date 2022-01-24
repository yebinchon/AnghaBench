#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int state; } ;
struct archive_write {int (* format_write_header ) (struct archive_write*,struct archive_entry*) ;scalar_t__ skip_file_ino; TYPE_1__ archive; scalar_t__ skip_file_dev; scalar_t__ skip_file_set; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_STATE_DATA ; 
 void* ARCHIVE_STATE_FATAL ; 
 int ARCHIVE_STATE_HEADER ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  ARCHIVE_WRITE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct archive_entry*) ; 
 scalar_t__ FUNC3 (struct archive_entry*) ; 
 scalar_t__ FUNC4 (struct archive_entry*) ; 
 scalar_t__ FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,char*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (struct archive_write*,struct archive_entry*) ; 

__attribute__((used)) static int
FUNC9(struct archive *_a, struct archive_entry *entry)
{
	struct archive_write *a = (struct archive_write *)_a;
	int ret, r2;

	FUNC0(&a->archive, ARCHIVE_WRITE_MAGIC,
	    ARCHIVE_STATE_DATA | ARCHIVE_STATE_HEADER, "archive_write_header");
	FUNC1(&a->archive);

	if (a->format_write_header == NULL) {
		FUNC6(&(a->archive), -1,
		    "Format must be set before you can write to an archive.");
		a->archive.state = ARCHIVE_STATE_FATAL;
		return (ARCHIVE_FATAL);
	}

	/* In particular, "retry" and "fatal" get returned immediately. */
	ret = FUNC7(&a->archive);
	if (ret == ARCHIVE_FATAL) {
		a->archive.state = ARCHIVE_STATE_FATAL;
		return (ARCHIVE_FATAL);
	}
	if (ret < ARCHIVE_OK && ret != ARCHIVE_WARN)
		return (ret);

	if (a->skip_file_set &&
	    FUNC3(entry) &&
	    FUNC5(entry) &&
	    FUNC2(entry) == (dev_t)a->skip_file_dev &&
	    FUNC4(entry) == a->skip_file_ino) {
		FUNC6(&a->archive, 0,
		    "Can't add archive to itself");
		return (ARCHIVE_FAILED);
	}

	/* Format and write header. */
	r2 = ((a->format_write_header)(a, entry));
	if (r2 == ARCHIVE_FAILED) {
		return (ARCHIVE_FAILED);
	}
	if (r2 == ARCHIVE_FATAL) {
		a->archive.state = ARCHIVE_STATE_FATAL;
		return (ARCHIVE_FATAL);
	}
	if (r2 < ret)
		ret = r2;

	a->archive.state = ARCHIVE_STATE_DATA;
	return (ret);
}