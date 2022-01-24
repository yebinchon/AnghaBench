#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra__vtable_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_2__ {char** (* get_schemes ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* get_version ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  APR_HASH_KEY_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_UNSUPPORTED_ABI_VERSION ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int SVN_RA_ABI_VERSION ; 
 TYPE_1__ VTBL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const* const,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compat_plugin ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char** FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC7(int abi_version,
                apr_pool_t *pool,
                apr_hash_t *hash)
{
  const svn_ra__vtable_t *vtable;
  const char * const * schemes;

  if (abi_version < 1
      || abi_version > SVN_RA_ABI_VERSION)
    return FUNC6(SVN_ERR_RA_UNSUPPORTED_ABI_VERSION, NULL,
                             FUNC2("Unsupported RA plugin ABI version (%d) "
                               "for %s"), abi_version, NAME);

  /* We call the new init function so it can check library dependencies or
     do other initialization things.  We fake the loader version, since we
     rely on the ABI version check instead. */
  FUNC1(FUNC0(VTBL.get_version(), &vtable, pool));

  schemes = VTBL.get_schemes(pool);

  for (; *schemes != NULL; ++schemes)
    FUNC3(hash, *schemes, APR_HASH_KEY_STRING, &compat_plugin);

  return SVN_NO_ERROR;
}