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
struct private_uuencode {int mode; int /*<<< orphan*/  name; } ;
struct archive_write_filter {char* name; int /*<<< orphan*/  free; int /*<<< orphan*/  close; int /*<<< orphan*/  write; int /*<<< orphan*/  options; int /*<<< orphan*/  open; int /*<<< orphan*/  code; struct private_uuencode* data; int /*<<< orphan*/  archive; } ;
struct archive_write {int /*<<< orphan*/  archive; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  ARCHIVE_FILTER_UU ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int /*<<< orphan*/  ARCHIVE_WRITE_MAGIC ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct archive_write_filter* FUNC0 (struct archive*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  archive_filter_uuencode_close ; 
 int /*<<< orphan*/  archive_filter_uuencode_free ; 
 int /*<<< orphan*/  archive_filter_uuencode_open ; 
 int /*<<< orphan*/  archive_filter_uuencode_options ; 
 int /*<<< orphan*/  archive_filter_uuencode_write ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int,int) ; 

int
FUNC5(struct archive *_a)
{
	struct archive_write *a = (struct archive_write *)_a;
	struct archive_write_filter *f = FUNC0(_a);
	struct private_uuencode *state;

	FUNC1(&a->archive, ARCHIVE_WRITE_MAGIC,
	    ARCHIVE_STATE_NEW, "archive_write_add_filter_uu");

	state = (struct private_uuencode *)FUNC4(1, sizeof(*state));
	if (state == NULL) {
		FUNC2(f->archive, ENOMEM,
		    "Can't allocate data for uuencode filter");
		return (ARCHIVE_FATAL);
	}
	FUNC3(&state->name, "-");
	state->mode = 0644;

	f->data = state;
	f->name = "uuencode";
	f->code = ARCHIVE_FILTER_UU;
	f->open = archive_filter_uuencode_open;
	f->options = archive_filter_uuencode_options;
	f->write = archive_filter_uuencode_write;
	f->close = archive_filter_uuencode_close;
	f->free = archive_filter_uuencode_free;

	return (ARCHIVE_OK);
}