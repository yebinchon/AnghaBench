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
 int /*<<< orphan*/  last_path ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char*) ; 

int FUNC4(void)
{
#ifdef CONFIG_DEBUG_FILE
	int rv;
	char *tmp;

	if (!last_path)
		return 0; /* logfile not used */

	tmp = os_strdup(last_path);
	if (!tmp)
		return -1;

	wpa_debug_close_file();
	rv = wpa_debug_open_file(tmp);
	os_free(tmp);
	return rv;
#else /* CONFIG_DEBUG_FILE */
	return 0;
#endif /* CONFIG_DEBUG_FILE */
}