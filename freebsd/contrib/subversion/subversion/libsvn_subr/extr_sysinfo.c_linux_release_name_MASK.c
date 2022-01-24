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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ *,char*,char const*,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC7(apr_pool_t *pool)
{
  const char *uname_release = FUNC4(pool);

  /* Try anything that has /usr/bin/lsb_release.
     Covers, for example, Debian, Ubuntu and SuSE.  */
  const char *release_name = FUNC2(pool);

  /* Try the systemd way (covers Arch). */
  if (!release_name)
    release_name = FUNC6(pool);

  /* Try RHEL/Fedora/CentOS */
  if (!release_name)
    release_name = FUNC3(pool);

  /* Try Non-LSB SuSE */
  if (!release_name)
    release_name = FUNC5(pool);

  /* Try non-LSB Debian */
  if (!release_name)
    release_name = FUNC1(pool);

  if (!release_name)
    return uname_release;

  if (!uname_release)
    return release_name;

  return FUNC0(pool, "%s [%s]", release_name, uname_release);
}