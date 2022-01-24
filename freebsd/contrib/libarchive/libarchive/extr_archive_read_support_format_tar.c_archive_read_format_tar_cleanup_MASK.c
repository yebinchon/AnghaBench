#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tar {int /*<<< orphan*/  localname; int /*<<< orphan*/  longlink; int /*<<< orphan*/  longname; int /*<<< orphan*/  pax_header; int /*<<< orphan*/  pax_global; int /*<<< orphan*/  line; int /*<<< orphan*/  entry_gname; int /*<<< orphan*/  entry_uname; int /*<<< orphan*/  entry_linkpath; int /*<<< orphan*/  entry_pathname_override; int /*<<< orphan*/  entry_pathname; int /*<<< orphan*/  acl_text; } ;
struct archive_read {TYPE_1__* format; } ;
struct TYPE_2__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tar*) ; 
 int /*<<< orphan*/  FUNC2 (struct tar*) ; 

__attribute__((used)) static int
FUNC3(struct archive_read *a)
{
	struct tar *tar;

	tar = (struct tar *)(a->format->data);
	FUNC2(tar);
	FUNC0(&tar->acl_text);
	FUNC0(&tar->entry_pathname);
	FUNC0(&tar->entry_pathname_override);
	FUNC0(&tar->entry_linkpath);
	FUNC0(&tar->entry_uname);
	FUNC0(&tar->entry_gname);
	FUNC0(&tar->line);
	FUNC0(&tar->pax_global);
	FUNC0(&tar->pax_header);
	FUNC0(&tar->longname);
	FUNC0(&tar->longlink);
	FUNC0(&tar->localname);
	FUNC1(tar);
	(a->format->data) = NULL;
	return (ARCHIVE_OK);
}