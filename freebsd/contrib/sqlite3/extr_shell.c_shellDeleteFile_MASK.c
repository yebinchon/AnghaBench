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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 

int FUNC4(const char *zFilename){
  int rc;
#ifdef _WIN32
  wchar_t *z = sqlite3_win32_utf8_to_unicode(zFilename);
  rc = _wunlink(z);
  sqlite3_free(z);
#else
  rc = FUNC3(zFilename);
#endif
  return rc;
}