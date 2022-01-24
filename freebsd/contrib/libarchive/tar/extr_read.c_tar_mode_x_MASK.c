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
struct bsdtar {int flags; int return_value; int /*<<< orphan*/  matching; int /*<<< orphan*/  extract_flags; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int OPTFLAG_NUMERIC_OWNER ; 
 struct archive* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct bsdtar*,char,struct archive*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 

void
FUNC7(struct bsdtar *bsdtar)
{
	struct archive *writer;

	writer = FUNC0();
	if (writer == NULL)
		FUNC4(1, ENOMEM, "Cannot allocate disk writer object");
	if ((bsdtar->flags & OPTFLAG_NUMERIC_OWNER) == 0)
		FUNC2(writer);
	FUNC1(writer, bsdtar->extract_flags);

	FUNC5(bsdtar, 'x', writer);

	if (FUNC6(bsdtar->matching,
	    "Not found in archive") != 0)
		bsdtar->return_value = 1;
	FUNC3(writer);
}