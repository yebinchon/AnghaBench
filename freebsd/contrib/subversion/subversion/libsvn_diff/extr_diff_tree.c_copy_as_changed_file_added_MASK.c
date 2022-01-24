#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {struct copy_as_changed_baton_t* baton; } ;
typedef  TYPE_1__ svn_diff_tree_processor_t ;
typedef  int /*<<< orphan*/  svn_diff_source_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct copy_as_changed_baton_t {TYPE_2__* processor; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* file_added ) (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,TYPE_2__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* file_changed ) (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void*,TYPE_2__*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(const char *relpath,
                           const svn_diff_source_t *copyfrom_source,
                           const svn_diff_source_t *right_source,
                           const char *copyfrom_file,
                           const char *right_file,
                           /*const*/ apr_hash_t *copyfrom_props,
                           /*const*/ apr_hash_t *right_props,
                           void *file_baton,
                           const svn_diff_tree_processor_t *processor,
                           apr_pool_t *scratch_pool)
{
  struct copy_as_changed_baton_t *cb = processor->baton;

  if (copyfrom_source)
    {
      apr_array_header_t *propchanges;
      svn_boolean_t same;
      FUNC0(FUNC4(&propchanges, right_props, copyfrom_props,
                             scratch_pool));

      /* "" is sometimes a marker for just modified (E.g. no-textdeltas),
         and it is certainly not a file */
      if (*copyfrom_file && *right_file)
        {
          FUNC0(FUNC3(&same, copyfrom_file,
                                               right_file, scratch_pool));
        }
      else
        same = FALSE;

      FUNC0(cb->processor->file_changed(relpath,
                                          copyfrom_source,
                                          right_source,
                                          copyfrom_file,
                                          right_file,
                                          copyfrom_props,
                                          right_props,
                                          !same,
                                          propchanges,
                                          file_baton,
                                          cb->processor,
                                          scratch_pool));
    }
  else
    {
      FUNC0(cb->processor->file_added(relpath,
                                        copyfrom_source,
                                        right_source,
                                        copyfrom_file,
                                        right_file,
                                        copyfrom_props,
                                        right_props,
                                        file_baton,
                                        cb->processor,
                                        scratch_pool));
    }
  return SVN_NO_ERROR;
}