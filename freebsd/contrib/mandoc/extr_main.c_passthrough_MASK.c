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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  MANDOCERR_FDOPEN ; 
 int /*<<< orphan*/  MANDOCERR_FFLUSH ; 
 int /*<<< orphan*/  MANDOCERR_GETLINE ; 
 int /*<<< orphan*/  MANDOCERR_WRITE ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (unsigned char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC12(int fd, int synopsis_only)
{
	const char	 synb[] = "S\bSY\bYN\bNO\bOP\bPS\bSI\bIS\bS";
	const char	 synr[] = "SYNOPSIS";

	FILE		*stream;
	char		*line, *cp;
	size_t		 linesz;
	ssize_t		 len, written;
	int		 lno, print;

	stream = NULL;
	line = NULL;
	linesz = 0;

	if (FUNC4(stdout) == EOF) {
		FUNC8(MANDOCERR_FFLUSH, 0, 0, "%s", FUNC10(errno));
		goto done;
	}
	if ((stream = FUNC2(fd, "r")) == NULL) {
		FUNC0(fd);
		FUNC8(MANDOCERR_FDOPEN, 0, 0, "%s", FUNC10(errno));
		goto done;
	}

	lno = print = 0;
	while ((len = FUNC6(&line, &linesz, stream)) != -1) {
		lno++;
		cp = line;
		if (synopsis_only) {
			if (print) {
				if ( ! FUNC7((unsigned char)*cp))
					goto done;
				while (FUNC7((unsigned char)*cp)) {
					cp++;
					len--;
				}
			} else {
				if (FUNC9(cp, synb) == 0 ||
				    FUNC9(cp, synr) == 0)
					print = 1;
				continue;
			}
		}
		for (; len > 0; len -= written) {
			if ((written = FUNC11(STDOUT_FILENO, cp, len)) == -1) {
				FUNC8(MANDOCERR_WRITE, 0, 0,
				    "%s", FUNC10(errno));
				goto done;
			}
		}
	}
	if (FUNC3(stream))
		FUNC8(MANDOCERR_GETLINE, lno, 0, "%s", FUNC10(errno));

done:
	FUNC5(line);
	if (stream != NULL)
		FUNC1(stream);
}