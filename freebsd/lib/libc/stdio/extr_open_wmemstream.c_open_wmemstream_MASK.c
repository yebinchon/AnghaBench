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
struct wmemstream {size_t* sizep; int /*<<< orphan*/  mbstate; scalar_t__ offset; scalar_t__ len; struct wmemstream** bufp; } ;
typedef  struct wmemstream wchar_t ;
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EINVAL ; 
 struct wmemstream* FUNC0 (int,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct wmemstream*) ; 
 int /*<<< orphan*/ * FUNC2 (struct wmemstream*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 struct wmemstream* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  wmemstream_close ; 
 int /*<<< orphan*/  wmemstream_seek ; 
 int /*<<< orphan*/  FUNC6 (struct wmemstream*) ; 
 int /*<<< orphan*/  wmemstream_write ; 

FILE *
FUNC7(wchar_t **bufp, size_t *sizep)
{
	struct wmemstream *ms;
	int save_errno;
	FILE *fp;

	if (bufp == NULL || sizep == NULL) {
		errno = EINVAL;
		return (NULL);
	}
	*bufp = FUNC0(1, sizeof(wchar_t));
	if (*bufp == NULL)
		return (NULL);
	ms = FUNC4(sizeof(*ms));
	if (ms == NULL) {
		save_errno = errno;
		FUNC1(*bufp);
		*bufp = NULL;
		errno = save_errno;
		return (NULL);
	}
	ms->bufp = bufp;
	ms->sizep = sizep;
	ms->len = 0;
	ms->offset = 0;
	FUNC5(&ms->mbstate, 0, sizeof(mbstate_t));
	FUNC6(ms);
	fp = FUNC2(ms, NULL, wmemstream_write, wmemstream_seek,
	    wmemstream_close);
	if (fp == NULL) {
		save_errno = errno;
		FUNC1(ms);
		FUNC1(*bufp);
		*bufp = NULL;
		errno = save_errno;
		return (NULL);
	}
	FUNC3(fp, 1);
	return (fp);
}