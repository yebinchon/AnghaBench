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
struct archive {unsigned int magic; unsigned int state; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 void* ARCHIVE_STATE_FATAL ; 
 char* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int,char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int) ; 

int
FUNC5(struct archive *a, unsigned int magic,
    unsigned int state, const char *function)
{
	char states1[64];
	char states2[64];
	const char *handle_type;

	/*
	 * If this isn't some form of archive handle,
	 * then the library user has screwed up so bad that
	 * we don't even have a reliable way to report an error.
	 */
	handle_type = FUNC0(a->magic);

	if (!handle_type) {
		FUNC3("PROGRAMMER ERROR: Function ");
		FUNC3(function);
		FUNC3(" invoked with invalid archive handle.\n");
		FUNC2();
	}

	if (a->magic != magic) {
		FUNC1(a, -1,
		    "PROGRAMMER ERROR: Function '%s' invoked"
		    " on '%s' archive object, which is not supported.",
		    function,
		    handle_type);
		a->state = ARCHIVE_STATE_FATAL;
		return (ARCHIVE_FATAL);
	}

	if ((a->state & state) == 0) {
		/* If we're already FATAL, don't overwrite the error. */
		if (a->state != ARCHIVE_STATE_FATAL)
			FUNC1(a, -1,
			    "INTERNAL ERROR: Function '%s' invoked with"
			    " archive structure in state '%s',"
			    " should be in state '%s'",
			    function,
			    FUNC4(states1, a->state),
			    FUNC4(states2, state));
		a->state = ARCHIVE_STATE_FATAL;
		return (ARCHIVE_FATAL);
	}
	return ARCHIVE_OK;
}