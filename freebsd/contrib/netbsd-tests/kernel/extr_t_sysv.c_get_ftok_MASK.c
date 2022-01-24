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
typedef  int /*<<< orphan*/  token_key ;
typedef  int /*<<< orphan*/  token_dir ;
typedef  int /*<<< orphan*/  key_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 char* FUNC4 (char*) ; 
 int FUNC5 (char*,int,int) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int FUNC9 (char*) ; 

key_t FUNC10(int id)
{
	int fd;
	char token_key[64], token_dir[64];
	char *tmpdir;
	key_t key;

	FUNC8(token_key, "/tmp/t_sysv.XXXXXX", sizeof(token_key));
	tmpdir = FUNC4(token_key);
	FUNC0(tmpdir != NULL, "mkdtemp() failed: %d", errno);

	FUNC8(token_dir, tmpdir, sizeof(token_dir));
	FUNC8(token_key, tmpdir, sizeof(token_key));
	FUNC7(token_key, "/token_key", sizeof(token_key));

	/* Create the file, since ftok() requires it to exist! */

	fd = FUNC5(token_key, O_RDWR | O_CREAT | O_EXCL, 0600);
	if (fd == -1) {
		FUNC6(tmpdir);
		FUNC1("open() of temp file failed: %d", errno);
		return (key_t)-1;
	} else
		FUNC2(fd);

	key = FUNC3(token_key, id);

	FUNC0(FUNC9(token_key) != -1, "unlink() failed: %d", errno);
	FUNC0(FUNC6(token_dir) != -1, "rmdir() failed: %d", errno);

	return key;
}