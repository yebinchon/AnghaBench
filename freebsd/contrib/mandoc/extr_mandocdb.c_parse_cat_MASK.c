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
struct mpage {char* sec; void* desc; struct mlink* mlinks; } ;
struct mlink {char* dsec; int /*<<< orphan*/  file; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (unsigned char) ; 
 char* FUNC7 (char*,size_t) ; 
 void* FUNC8 (char*,int) ; 
 char* FUNC9 (char*,char,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 char* FUNC14 (char*,char) ; 
 size_t FUNC15 (char*) ; 
 char* FUNC16 (char*,char*) ; 
 scalar_t__ warnings ; 

__attribute__((used)) static void
FUNC17(struct mpage *mpage, int fd)
{
	FILE		*stream;
	struct mlink	*mlink;
	char		*line, *p, *title, *sec;
	size_t		 linesz, plen, titlesz;
	ssize_t		 len;
	int		 offs;

	mlink = mpage->mlinks;
	stream = fd == -1 ? FUNC3(mlink->file, "r") : FUNC2(fd, "r");
	if (stream == NULL) {
		if (fd != -1)
			FUNC0(fd);
		if (warnings)
			FUNC12(mlink->file, "&fopen");
		return;
	}

	line = NULL;
	linesz = 0;

	/* Parse the section number from the header line. */

	while (FUNC5(&line, &linesz, stream) != -1) {
		if (*line == '\n')
			continue;
		if ((sec = FUNC14(line, '(')) == NULL)
			break;
		if ((p = FUNC14(++sec, ')')) == NULL)
			break;
		FUNC4(mpage->sec);
		mpage->sec = FUNC8(sec, p - sec);
		if (warnings && *mlink->dsec != '\0' &&
		    FUNC13(mpage->sec, mlink->dsec))
			FUNC12(mlink->file,
			    "Section \"%s\" manual in %s directory",
			    mpage->sec, mlink->dsec);
		break;
	}

	/* Skip to first blank line. */

	while (line == NULL || *line != '\n')
		if (FUNC5(&line, &linesz, stream) == -1)
			break;

	/*
	 * Assume the first line that is not indented
	 * is the first section header.  Skip to it.
	 */

	while (FUNC5(&line, &linesz, stream) != -1)
		if (*line != '\n' && *line != ' ')
			break;

	/*
	 * Read up until the next section into a buffer.
	 * Strip the leading and trailing newline from each read line,
	 * appending a trailing space.
	 * Ignore empty (whitespace-only) lines.
	 */

	titlesz = 0;
	title = NULL;

	while ((len = FUNC5(&line, &linesz, stream)) != -1) {
		if (*line != ' ')
			break;
		offs = 0;
		while (FUNC6((unsigned char)line[offs]))
			offs++;
		if (line[offs] == '\0')
			continue;
		title = FUNC7(title, titlesz + len - offs);
		FUNC10(title + titlesz, line + offs, len - offs);
		titlesz += len - offs;
		title[titlesz - 1] = ' ';
	}
	FUNC4(line);

	/*
	 * If no page content can be found, or the input line
	 * is already the next section header, or there is no
	 * trailing newline, reuse the page title as the page
	 * description.
	 */

	if (NULL == title || '\0' == *title) {
		if (warnings)
			FUNC12(mlink->file, "Cannot find NAME section");
		FUNC1(stream);
		FUNC4(title);
		return;
	}

	title[titlesz - 1] = '\0';

	/*
	 * Skip to the first dash.
	 * Use the remaining line as the description (no more than 70
	 * bytes).
	 */

	if (NULL != (p = FUNC16(title, "- "))) {
		for (p += 2; ' ' == *p || '\b' == *p; p++)
			/* Skip to next word. */ ;
	} else {
		if (warnings)
			FUNC12(mlink->file, "No dash in title line, "
			    "reusing \"%s\" as one-line description", title);
		p = title;
	}

	plen = FUNC15(p);

	/* Strip backspace-encoding from line. */

	while (NULL != (line = FUNC9(p, '\b', plen))) {
		len = line - p;
		if (0 == len) {
			FUNC11(line, line + 1, plen--);
			continue;
		}
		FUNC11(line - 1, line + 1, plen - len);
		plen -= 2;
	}

	/*
	 * Cut off excessive one-line descriptions.
	 * Bad pages are not worth better heuristics.
	 */

	mpage->desc = FUNC8(p, 150);
	FUNC1(stream);
	FUNC4(title);
}