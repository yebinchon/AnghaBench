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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 size_t _MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (char const*,int) ; 
 char const* key_file_name ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*,size_t) ; 
 int FUNC6 (char const*) ; 

void
FUNC7(
	const char *keyfile
	)
{
	size_t len;

	len = FUNC6(keyfile);
	if (!len)
		return;
	
#ifndef SYS_WINNT
	key_file_name = FUNC2(key_file_name, len + 1);
	FUNC3(key_file_name, keyfile, len + 1);
#else
	key_file_name = erealloc(key_file_name, _MAX_PATH);
	if (len + 1 > _MAX_PATH)
		return;
	if (!ExpandEnvironmentStrings(keyfile, key_file_name,
				      _MAX_PATH)) {
		msyslog(LOG_ERR,
			"ExpandEnvironmentStrings(KEY_FILE) failed: %m");
		strlcpy(key_file_name, keyfile, _MAX_PATH);
	}
	key_file_name = erealloc(key_file_name,
				 1 + strlen(key_file_name));
#endif /* SYS_WINNT */

	FUNC1(key_file_name);
}