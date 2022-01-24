#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
struct TYPE_7__ {scalar_t__ dest_pending_sparse; int dest_fd; int /*<<< orphan*/  dest_name; scalar_t__ dest_try_sparse; } ;
typedef  TYPE_1__ file_pair ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char const*,int) ; 
 int FUNC5 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

extern void
FUNC10(file_pair *pair, bool success)
{
	// Take care of sparseness at the end of the output file.
	if (success && pair->dest_try_sparse
			&& pair->dest_pending_sparse > 0) {
		// Seek forward one byte less than the size of the pending
		// hole, then write one zero-byte. This way the file grows
		// to its correct size. An alternative would be to use
		// ftruncate() but that isn't portable enough (e.g. it
		// doesn't work with FAT on Linux; FAT isn't that important
		// since it doesn't support sparse files anyway, but we don't
		// want to create corrupt files on it).
		if (FUNC5(pair->dest_fd, pair->dest_pending_sparse - 1,
				SEEK_CUR) == -1) {
			FUNC6(FUNC0("%s: Seeking failed when trying "
					"to create a sparse file: %s"),
					pair->dest_name, FUNC9(errno));
			success = false;
		} else {
			const uint8_t zero[1] = { '\0' };
			if (FUNC4(pair, zero, 1))
				success = false;
		}
	}

	FUNC7();

	// Copy the file attributes. We need to skip this if destination
	// file isn't open or it is standard output.
	if (success && pair->dest_fd != -1 && pair->dest_fd != STDOUT_FILENO)
		FUNC3(pair);

	// Close the destination first. If it fails, we must not remove
	// the source file!
	if (FUNC1(pair, success))
		success = false;

	// Close the source file, and unlink it if the operation using this
	// file pair was successful and we haven't requested to keep the
	// source file.
	FUNC2(pair, success);

	FUNC8();

	return;
}