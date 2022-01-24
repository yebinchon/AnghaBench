#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int const files_delim; int /*<<< orphan*/  files_name; int /*<<< orphan*/  files_file; } ;
typedef  TYPE_1__ args_info ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  user_abort ; 
 char* FUNC6 (size_t) ; 
 char* FUNC7 (char*,size_t) ; 

__attribute__((used)) static const char *
FUNC8(const args_info *args)
{
	// FIXME: Maybe we should have some kind of memory usage limit here
	// like the tool has for the actual compression and decompression.
	// Giving some huge text file with --files0 makes us to read the
	// whole file in RAM.
	static char *name = NULL;
	static size_t size = 256;

	// Allocate the initial buffer. This is never freed, since after it
	// is no longer needed, the program exits very soon. It is safe to
	// use xmalloc() and xrealloc() in this function, because while
	// executing this function, no files are open for writing, and thus
	// there's no need to cleanup anything before exiting.
	if (name == NULL)
		name = FUNC6(size);

	// Write position in name
	size_t pos = 0;

	// Read one character at a time into name.
	while (!user_abort) {
		const int c = FUNC3(args->files_file);

		if (FUNC2(args->files_file)) {
			// Take care of EINTR since we have established
			// the signal handlers already.
			if (errno == EINTR)
				continue;

			FUNC4(FUNC0("%s: Error reading filenames: %s"),
					args->files_name, FUNC5(errno));
			return NULL;
		}

		if (FUNC1(args->files_file)) {
			if (pos != 0)
				FUNC4(FUNC0("%s: Unexpected end of input "
						"when reading filenames"),
						args->files_name);

			return NULL;
		}

		if (c == args->files_delim) {
			// We allow consecutive newline (--files) or '\0'
			// characters (--files0), and ignore such empty
			// filenames.
			if (pos == 0)
				continue;

			// A non-empty name was read. Terminate it with '\0'
			// and return it.
			name[pos] = '\0';
			return name;
		}

		if (c == '\0') {
			// A null character was found when using --files,
			// which expects plain text input separated with
			// newlines.
			FUNC4(FUNC0("%s: Null character found when "
					"reading filenames; maybe you meant "
					"to use `--files0' instead "
					"of `--files'?"), args->files_name);
			return NULL;
		}

		name[pos++] = c;

		// Allocate more memory if needed. There must always be space
		// at least for one character to allow terminating the string
		// with '\0'.
		if (pos == size) {
			size *= 2;
			name = FUNC7(name, size);
		}
	}

	return NULL;
}