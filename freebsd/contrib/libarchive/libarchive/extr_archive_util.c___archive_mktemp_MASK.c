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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct archive_string {char* s; int length; } ;
typedef  int /*<<< orphan*/  num ;

/* Variables and functions */
 scalar_t__ ARCHIVE_OK ; 
 scalar_t__ EEXIST ; 
 scalar_t__ ENOTDIR ; 
 int O_CLOEXEC ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_string*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_string*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_string*) ; 
 int FUNC7 (struct archive_string*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC8 (struct archive_string*) ; 
 scalar_t__ FUNC9 (char*,struct stat*) ; 
 int FUNC10 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

int
FUNC12(const char *tmpdir)
{
        static const char num[] = {
		'0', '1', '2', '3', '4', '5', '6', '7',
		'8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
		'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N',
		'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V',
		'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd',
		'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l',
		'm', 'n', 'o', 'p', 'q', 'r', 's', 't',
		'u', 'v', 'w', 'x', 'y', 'z'
        };
	struct archive_string temp_name;
	struct stat st;
	int fd;
	char *tp, *ep;

	fd = -1;
	FUNC6(&temp_name);
	if (tmpdir == NULL) {
		if (FUNC8(&temp_name) != ARCHIVE_OK)
			goto exit_tmpfile;
	} else
		FUNC4(&temp_name, tmpdir);
	if (temp_name.s[temp_name.length-1] == '/') {
		temp_name.s[temp_name.length-1] = '\0';
		temp_name.length --;
	}
	if (FUNC9(temp_name.s, &st) < 0)
		goto exit_tmpfile;
	if (!FUNC0(st.st_mode)) {
		errno = ENOTDIR;
		goto exit_tmpfile;
	}
	FUNC3(&temp_name, "/libarchive_");
	tp = temp_name.s + FUNC7(&temp_name);
	FUNC3(&temp_name, "XXXXXXXXXX");
	ep = temp_name.s + FUNC7(&temp_name);

	do {
		char *p;

		p = tp;
		FUNC2(p, ep - p);
		while (p < ep) {
			int d = *((unsigned char *)p) % sizeof(num);
			*p++ = num[d];
		}
		fd = FUNC10(temp_name.s, O_CREAT | O_EXCL | O_RDWR | O_CLOEXEC,
			  0600);
	} while (fd < 0 && errno == EEXIST);
	if (fd < 0)
		goto exit_tmpfile;
	FUNC1(fd);
	FUNC11(temp_name.s);
exit_tmpfile:
	FUNC5(&temp_name);
	return (fd);
}