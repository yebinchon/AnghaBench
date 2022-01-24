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
typedef  scalar_t__ svn_subst_eol_style_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SVN_ERR_IO_UNKNOWN_EOL ; 
 char* SVN_SUBST_NATIVE_EOL_STR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_subst_eol_style_fixed ; 
 scalar_t__ svn_subst_eol_style_native ; 
 scalar_t__ svn_subst_eol_style_none ; 

svn_error_t *
FUNC3(const char *src,
                                   const char *dst,
                                   svn_subst_eol_style_t eol_style,
                                   const char *eol_str,
                                   svn_boolean_t always_repair_eols,
                                   apr_hash_t *keywords,
                                   svn_boolean_t special,
                                   apr_pool_t *pool)
{

  if (eol_style == svn_subst_eol_style_native)
    eol_str = SVN_SUBST_NATIVE_EOL_STR;
  else if (! (eol_style == svn_subst_eol_style_fixed
              || eol_style == svn_subst_eol_style_none))
    return FUNC0(SVN_ERR_IO_UNKNOWN_EOL, NULL, NULL);

  return FUNC1(FUNC2(
                           src, dst, eol_str,
                           eol_style == svn_subst_eol_style_fixed
                             || always_repair_eols,
                           keywords,
                           FALSE /* contract keywords */,
                           special,
                           pool));
}