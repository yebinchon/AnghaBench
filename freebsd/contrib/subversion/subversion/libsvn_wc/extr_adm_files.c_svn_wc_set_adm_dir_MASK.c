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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_BAD_FILENAME ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char const* adm_dir_name ; 
#define  default_adm_dir_name 128 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC4(const char *name, apr_pool_t *pool)
{
  /* This is the canonical list of administrative directory names.

     FIXME:
     An identical list is used in
       libsvn_subr/opt.c:svn_opt__args_to_target_array(),
     but that function can't use this list, because that use would
     create a circular dependency between libsvn_wc and libsvn_subr.
     Make sure changes to the lists are always synchronized! */
  static const char *valid_dir_names[] = {
    default_adm_dir_name,
    "_svn",
    NULL
  };

  const char **dir_name;
  for (dir_name = valid_dir_names; *dir_name; ++dir_name)
    if (0 == FUNC1(name, *dir_name))
      {
        /* Use the pointer to the statically allocated string
           constant, to avoid potential pool lifetime issues. */
        adm_dir_name = *dir_name;
        return SVN_NO_ERROR;
      }
  return FUNC3(SVN_ERR_BAD_FILENAME, NULL,
                           FUNC0("'%s' is not a valid administrative "
                             "directory name"),
                           FUNC2(name, pool));
}