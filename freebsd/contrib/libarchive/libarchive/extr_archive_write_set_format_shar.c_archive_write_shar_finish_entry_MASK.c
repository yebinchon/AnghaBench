#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int length; int /*<<< orphan*/  s; } ;
struct shar {scalar_t__ outpos; TYPE_1__ work; int /*<<< orphan*/ * entry; int /*<<< orphan*/  end_of_line; scalar_t__ has_data; int /*<<< orphan*/  outbuff; scalar_t__ dump; } ;
struct archive_write {scalar_t__ format_data; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int FUNC0 (struct archive_write*,int /*<<< orphan*/ ,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 char const* FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_write*,struct shar*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC13(struct archive_write *a)
{
	const char *g, *p, *u;
	struct shar *shar;
	int ret;

	shar = (struct shar *)a->format_data;
	if (shar->entry == NULL)
		return (0);

	if (shar->dump) {
		/* Finish uuencoded data. */
		if (shar->has_data) {
			if (shar->outpos > 0)
				FUNC12(a, shar, shar->outbuff,
				    shar->outpos);
			FUNC8(&shar->work, "`\nend\n");
			FUNC8(&shar->work, "SHAR_END\n");
		}
		/* Restore file mode, owner, flags. */
		/*
		 * TODO: Don't immediately restore mode for
		 * directories; defer that to end of script.
		 */
		FUNC10(&shar->work, "chmod %o ",
		    (unsigned int)(FUNC4(shar->entry) & 07777));
		FUNC11(&shar->work, FUNC5(shar->entry), 1);
		FUNC8(&shar->work, "\n");

		u = FUNC6(shar->entry);
		g = FUNC3(shar->entry);
		if (u != NULL || g != NULL) {
			FUNC8(&shar->work, "chown ");
			if (u != NULL)
				FUNC11(&shar->work, u, 1);
			if (g != NULL) {
				FUNC8(&shar->work, ":");
				FUNC11(&shar->work, g, 1);
			}
			FUNC8(&shar->work, " ");
			FUNC11(&shar->work,
			    FUNC5(shar->entry), 1);
			FUNC8(&shar->work, "\n");
		}

		if ((p = FUNC1(shar->entry)) != NULL) {
			FUNC10(&shar->work, "chflags %s ", p);
			FUNC11(&shar->work,
			    FUNC5(shar->entry), 1);
			FUNC8(&shar->work, "\n");
		}

		/* TODO: restore ACLs */

	} else {
		if (shar->has_data) {
			/* Finish sed-encoded data:  ensure last line ends. */
			if (!shar->end_of_line)
				FUNC7(&shar->work, '\n');
			FUNC8(&shar->work, "SHAR_END\n");
		}
	}

	FUNC2(shar->entry);
	shar->entry = NULL;

	if (shar->work.length < 65536)
		return (ARCHIVE_OK);

	ret = FUNC0(a, shar->work.s, shar->work.length);
	if (ret != ARCHIVE_OK)
		return (ARCHIVE_FATAL);
	FUNC9(&shar->work);

	return (ARCHIVE_OK);
}