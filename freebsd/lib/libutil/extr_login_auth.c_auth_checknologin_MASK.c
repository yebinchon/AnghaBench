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
typedef  int /*<<< orphan*/  login_cap_t ;

/* Variables and functions */
 char const* _PATH_NOLOGIN ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 

void
FUNC4(login_cap_t *lc)
{
  const char *file;

  /* Do we ignore a nologin file? */
  if (FUNC2(lc, "ignorenologin", 0))
    return;

  /* Note that <file> will be "" if there is no nologin capability */
  if ((file = FUNC3(lc, "nologin", "", NULL)) == NULL)
    FUNC1(1);

  /*
   * *file is true IFF there was a "nologin" capability
   * Note that auth_cat() returns 1 only if the specified
   * file exists, and is readable.  E.g., /.nologin exists.
   */
  if ((*file && FUNC0(file)) || FUNC0(_PATH_NOLOGIN))
    FUNC1(1);
}