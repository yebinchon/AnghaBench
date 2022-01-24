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
struct tar {TYPE_1__* sparse_list; int /*<<< orphan*/  entry_offset; } ;
struct gnu_sparse {int dummy; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
struct archive_entry_header_gnutar {scalar_t__* isextended; struct gnu_sparse* sparse; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FATAL ; 
 scalar_t__ ARCHIVE_OK ; 
 void* FUNC0 (struct archive_read*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct archive_read*,struct tar*,struct gnu_sparse*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_read*,size_t*) ; 

__attribute__((used)) static int
FUNC4(struct archive_read *a, struct tar *tar,
    const struct archive_entry_header_gnutar *header, size_t *unconsumed)
{
	ssize_t bytes_read;
	const void *data;
	struct extended {
		struct gnu_sparse sparse[21];
		char	isextended[1];
		char	padding[7];
	};
	const struct extended *ext;

	if (FUNC2(a, tar, header->sparse, 4) != ARCHIVE_OK)
		return (ARCHIVE_FATAL);
	if (header->isextended[0] == 0)
		return (ARCHIVE_OK);

	do {
		FUNC3(a, unconsumed);
		data = FUNC0(a, 512, &bytes_read);
		if (bytes_read < 0)
			return (ARCHIVE_FATAL);
		if (bytes_read < 512) {
			FUNC1(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
			    "Truncated tar archive "
			    "detected while reading sparse file data");
			return (ARCHIVE_FATAL);
		}
		*unconsumed = 512;
		ext = (const struct extended *)data;
		if (FUNC2(a, tar, ext->sparse, 21) != ARCHIVE_OK)
			return (ARCHIVE_FATAL);
	} while (ext->isextended[0] != 0);
	if (tar->sparse_list != NULL)
		tar->entry_offset = tar->sparse_list->offset;
	return (ARCHIVE_OK);
}