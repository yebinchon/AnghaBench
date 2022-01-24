#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int noatime; } ;
struct tree {int entry_eof; scalar_t__ entry_remaining_bytes; scalar_t__ entry_fd; int nlink; int flags; void* entry_buff; size_t entry_buff_size; scalar_t__ entry_total; TYPE_3__ restore_time; TYPE_2__* current_sparse; TYPE_1__* current_filesystem; } ;
struct TYPE_8__ {void* state; } ;
struct archive_read_disk {TYPE_4__ archive; struct tree* tree; } ;
struct archive {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  off_t ;
typedef  size_t int64_t ;
struct TYPE_6__ {size_t length; scalar_t__ offset; } ;
struct TYPE_5__ {int xfer_align; void* buff; size_t buff_size; int /*<<< orphan*/ * allocation_ptr; } ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_DISK_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_DATA ; 
 void* ARCHIVE_STATE_FATAL ; 
 scalar_t__ EPERM ; 
 int O_BINARY ; 
 int O_CLOEXEC ; 
 int O_DIRECT ; 
 int O_NOATIME ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct tree*,TYPE_3__*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int needsRestoreTimes ; 
 scalar_t__ FUNC5 (struct tree*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC6 (scalar_t__,void*,size_t) ; 
 int FUNC7 (struct archive_read_disk*) ; 
 int /*<<< orphan*/  FUNC8 (struct tree*) ; 
 int /*<<< orphan*/  FUNC9 (struct tree*) ; 
 int /*<<< orphan*/  FUNC10 (struct tree*) ; 

__attribute__((used)) static int
FUNC11(struct archive *_a, const void **buff,
    size_t *size, int64_t *offset)
{
	struct archive_read_disk *a = (struct archive_read_disk *)_a;
	struct tree *t = a->tree;
	int r;
	ssize_t bytes;
	size_t buffbytes;
	int empty_sparse_region = 0;

	FUNC1(_a, ARCHIVE_READ_DISK_MAGIC, ARCHIVE_STATE_DATA,
	    "archive_read_data_block");

	if (t->entry_eof || t->entry_remaining_bytes <= 0) {
		r = ARCHIVE_EOF;
		goto abort_read_data;
	}

	/*
	 * Open the current file.
	 */
	if (t->entry_fd < 0) {
		int flags = O_RDONLY | O_BINARY | O_CLOEXEC;

		/*
		 * Eliminate or reduce cache effects if we can.
		 *
		 * Carefully consider this to be enabled.
		 */
#if defined(O_DIRECT) && 0/* Disabled for now */
		if (t->current_filesystem->xfer_align != -1 &&
		    t->nlink == 1)
			flags |= O_DIRECT;
#endif
#if defined(O_NOATIME)
		/*
		 * Linux has O_NOATIME flag; use it if we need.
		 */
		if ((t->flags & needsRestoreTimes) != 0 &&
		    t->restore_time.noatime == 0)
			flags |= O_NOATIME;
		do {
#endif
			t->entry_fd = FUNC5(t,
			    FUNC8(t), flags);
			FUNC0(t->entry_fd);
#if defined(O_NOATIME)
			/*
			 * When we did open the file with O_NOATIME flag,
			 * if successful, set 1 to t->restore_time.noatime
			 * not to restore an atime of the file later.
			 * if failed by EPERM, retry it without O_NOATIME flag.
			 */
			if (flags & O_NOATIME) {
				if (t->entry_fd >= 0)
					t->restore_time.noatime = 1;
				else if (errno == EPERM) {
					flags &= ~O_NOATIME;
					continue;
				}
			}
		} while (0);
#endif
		if (t->entry_fd < 0) {
			FUNC2(&a->archive, errno,
			    "Couldn't open %s", FUNC9(t));
			r = ARCHIVE_FAILED;
			FUNC10(t);
			goto abort_read_data;
		}
		FUNC10(t);
	}

	/*
	 * Allocate read buffer if not allocated.
	 */
	if (t->current_filesystem->allocation_ptr == NULL) {
		r = FUNC7(a);
		if (r != ARCHIVE_OK) {
			a->archive.state = ARCHIVE_STATE_FATAL;
			goto abort_read_data;
		}
	}
	t->entry_buff = t->current_filesystem->buff;
	t->entry_buff_size = t->current_filesystem->buff_size;

	buffbytes = t->entry_buff_size;
	if ((int64_t)buffbytes > t->current_sparse->length)
		buffbytes = t->current_sparse->length;

	if (t->current_sparse->length == 0)
		empty_sparse_region = 1;

	/*
	 * Skip hole.
	 * TODO: Should we consider t->current_filesystem->xfer_align?
	 */
	if (t->current_sparse->offset > t->entry_total) {
		if (FUNC4(t->entry_fd,
		    (off_t)t->current_sparse->offset, SEEK_SET) < 0) {
			FUNC2(&a->archive, errno, "Seek error");
			r = ARCHIVE_FATAL;
			a->archive.state = ARCHIVE_STATE_FATAL;
			goto abort_read_data;
		}
		bytes = t->current_sparse->offset - t->entry_total;
		t->entry_remaining_bytes -= bytes;
		t->entry_total += bytes;
	}

	/*
	 * Read file contents.
	 */
	if (buffbytes > 0) {
		bytes = FUNC6(t->entry_fd, t->entry_buff, buffbytes);
		if (bytes < 0) {
			FUNC2(&a->archive, errno, "Read error");
			r = ARCHIVE_FATAL;
			a->archive.state = ARCHIVE_STATE_FATAL;
			goto abort_read_data;
		}
	} else
		bytes = 0;
	/*
	 * Return an EOF unless we've read a leading empty sparse region, which
	 * is used to represent fully-sparse files.
	*/
	if (bytes == 0 && !empty_sparse_region) {
		/* Get EOF */
		t->entry_eof = 1;
		r = ARCHIVE_EOF;
		goto abort_read_data;
	}
	*buff = t->entry_buff;
	*size = bytes;
	*offset = t->entry_total;
	t->entry_total += bytes;
	t->entry_remaining_bytes -= bytes;
	if (t->entry_remaining_bytes == 0) {
		/* Close the current file descriptor */
		FUNC3(t->entry_fd, t, &t->restore_time);
		t->entry_fd = -1;
		t->entry_eof = 1;
	}
	t->current_sparse->offset += bytes;
	t->current_sparse->length -= bytes;
	if (t->current_sparse->length == 0 && !t->entry_eof)
		t->current_sparse++;
	return (ARCHIVE_OK);

abort_read_data:
	*buff = NULL;
	*size = 0;
	*offset = t->entry_total;
	if (t->entry_fd >= 0) {
		/* Close the current file descriptor */
		FUNC3(t->entry_fd, t, &t->restore_time);
		t->entry_fd = -1;
	}
	return (r);
}