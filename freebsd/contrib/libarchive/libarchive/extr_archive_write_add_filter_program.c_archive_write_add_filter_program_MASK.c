#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  s; } ;
struct private_data {TYPE_1__ description; int /*<<< orphan*/ * pdata; int /*<<< orphan*/ * cmd; } ;
struct archive_write_filter {int /*<<< orphan*/  (* free ) (struct archive_write_filter*) ;int /*<<< orphan*/  close; int /*<<< orphan*/  write; int /*<<< orphan*/  open; int /*<<< orphan*/  code; int /*<<< orphan*/  name; int /*<<< orphan*/ * data; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  ARCHIVE_FILTER_PROGRAM ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int /*<<< orphan*/  ARCHIVE_WRITE_MAGIC ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct archive_write_filter* FUNC0 (struct archive*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  archive_compressor_program_close ; 
 int /*<<< orphan*/  FUNC3 (struct archive_write_filter*) ; 
 int /*<<< orphan*/  archive_compressor_program_open ; 
 int /*<<< orphan*/  archive_compressor_program_write ; 
 int /*<<< orphan*/  FUNC4 (struct archive*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC8 (int,int) ; 
 int /*<<< orphan*/ * FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (char const*) ; 

int
FUNC11(struct archive *_a, const char *cmd)
{
	struct archive_write_filter *f = FUNC0(_a);
	struct private_data *data;
	static const char prefix[] = "Program: ";

	FUNC2(_a, ARCHIVE_WRITE_MAGIC,
	    ARCHIVE_STATE_NEW, "archive_write_add_filter_program");

	f->data = FUNC8(1, sizeof(*data));
	if (f->data == NULL)
		goto memerr;
	data = (struct private_data *)f->data;

	data->cmd = FUNC9(cmd);
	if (data->cmd == NULL)
		goto memerr;

	data->pdata = FUNC1(cmd);
	if (data->pdata == NULL)
		goto memerr;

	/* Make up a description string. */
	if (FUNC7(&data->description,
	    FUNC10(prefix) + FUNC10(cmd) + 1) == NULL)
		goto memerr;
	FUNC6(&data->description, prefix);
	FUNC5(&data->description, cmd);

	f->name = data->description.s;
	f->code = ARCHIVE_FILTER_PROGRAM;
	f->open = archive_compressor_program_open;
	f->write = archive_compressor_program_write;
	f->close = archive_compressor_program_close;
	f->free = archive_compressor_program_free;
	return (ARCHIVE_OK);
memerr:
	FUNC3(f);
	FUNC4(_a, ENOMEM,
	    "Can't allocate memory for filter program");
	return (ARCHIVE_FATAL);
}