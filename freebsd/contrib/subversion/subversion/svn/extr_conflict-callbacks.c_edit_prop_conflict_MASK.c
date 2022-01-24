#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; } ;
typedef  TYPE_1__ svn_cmdline_prompt_baton_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_io_file_del_on_pool_cleanup ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(const svn_string_t **merged_propval,
                   const svn_string_t *base_propval,
                   const svn_string_t *my_propval,
                   const svn_string_t *their_propval,
                   const char *editor_cmd,
                   apr_hash_t *config,
                   svn_cmdline_prompt_baton_t *pb,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  const char *file_path;
  svn_boolean_t performed_edit = FALSE;
  svn_stream_t *merged_prop;

  FUNC0(FUNC4(&merged_prop, &file_path, NULL,
                                 svn_io_file_del_on_pool_cleanup,
                                 scratch_pool, scratch_pool));
  FUNC0(FUNC1(merged_prop, base_propval, my_propval,
                              their_propval, NULL,
                              pb->cancel_func,
                              pb->cancel_baton,
                              scratch_pool));
  FUNC0(FUNC3(merged_prop));
  FUNC0(FUNC2(&performed_edit, file_path, editor_cmd,
                      config, scratch_pool));
  if (performed_edit && merged_propval)
    {
      svn_stringbuf_t *buf;

      FUNC0(FUNC6(&buf, file_path, scratch_pool));
      *merged_propval = FUNC5(buf, result_pool); 
    }

  return SVN_NO_ERROR;
}