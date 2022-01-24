#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tree {int sparse_count; int sparse_list_size; TYPE_1__* sparse_list; TYPE_1__* current_sparse; } ;
struct TYPE_5__ {int /*<<< orphan*/  state; } ;
struct archive_read_disk {TYPE_3__ archive; struct tree* tree; } ;
struct archive_entry {int dummy; } ;
typedef  void* int64_t ;
struct TYPE_4__ {void* length; void* offset; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_STATE_FATAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,void**,void**) ; 
 int FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct archive_read_disk *a, struct archive_entry *entry)
{
	struct tree *t = a->tree;
	int64_t length, offset;
	int i;

	t->sparse_count = FUNC2(entry);
	if (t->sparse_count+1 > t->sparse_list_size) {
		FUNC4(t->sparse_list);
		t->sparse_list_size = t->sparse_count + 1;
		t->sparse_list = FUNC5(sizeof(t->sparse_list[0]) *
		    t->sparse_list_size);
		if (t->sparse_list == NULL) {
			t->sparse_list_size = 0;
			FUNC3(&a->archive, ENOMEM,
			    "Can't allocate data");
			a->archive.state = ARCHIVE_STATE_FATAL;
			return (ARCHIVE_FATAL);
		}
	}
	for (i = 0; i < t->sparse_count; i++) {
		FUNC1(entry, &offset, &length);
		t->sparse_list[i].offset = offset;
		t->sparse_list[i].length = length;
	}
	if (i == 0) {
		t->sparse_list[i].offset = 0;
		t->sparse_list[i].length = FUNC0(entry);
	} else {
		t->sparse_list[i].offset = FUNC0(entry);
		t->sparse_list[i].length = 0;
	}
	t->current_sparse = t->sparse_list;

	return (ARCHIVE_OK);
}