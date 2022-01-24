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
struct lafe_line_reader {int dummy; } ;
struct bsdtar {int next_line_is_dir; int flags; int return_value; int /*<<< orphan*/  names_from_file; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int OPTFLAG_NULL ; 
 int /*<<< orphan*/  FUNC0 (struct bsdtar*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 struct lafe_line_reader* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lafe_line_reader*) ; 
 char* FUNC4 (struct lafe_line_reader*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct bsdtar*,char const*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct bsdtar*,struct archive*,char const*) ; 

__attribute__((used)) static void
FUNC9(struct bsdtar *bsdtar, struct archive *a)
{
	struct lafe_line_reader *lr;
	const char *line;

	bsdtar->next_line_is_dir = 0;

	lr = FUNC2(bsdtar->names_from_file,
	    (bsdtar->flags & OPTFLAG_NULL));
	while ((line = FUNC4(lr)) != NULL) {
		if (bsdtar->next_line_is_dir) {
			if (*line != '\0')
				FUNC6(bsdtar, line);
			else {
				FUNC5(0,
				    "Meaningless argument for -C: ''");
				bsdtar->return_value = 1;
			}
			bsdtar->next_line_is_dir = 0;
		} else if (((bsdtar->flags & OPTFLAG_NULL) == 0) &&
		    FUNC7(line, "-C") == 0)
			bsdtar->next_line_is_dir = 1;
		else {
			if (*line != '/')
				FUNC0(bsdtar); /* Handle a deferred -C */
			FUNC8(bsdtar, a, line);
		}
	}
	FUNC3(lr);
	if (bsdtar->next_line_is_dir)
		FUNC1(1, errno,
		    "Unexpected end of filename list; "
		    "directory expected after -C");
}