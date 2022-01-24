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
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_packed__int_stream_t ;
typedef  int /*<<< orphan*/  svn_packed__data_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int /*<<< orphan*/  tag; scalar_t__ start_rev; } ;
typedef  TYPE_1__ manifest_entry_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(apr_array_header_t **manifest,
              svn_stringbuf_t *content,
              svn_revnum_t revision,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  apr_size_t i;
  apr_size_t count;

  svn_packed__data_root_t *root;
  svn_packed__int_stream_t *start_rev_stream;
  svn_packed__int_stream_t *tag_stream;

  /* Verify the checksum and decode packed data. */
  FUNC0(FUNC4(&root, content, result_pool,
                                         scratch_pool),
            FUNC3(scratch_pool,
                         "Revprop manifest file for r%ld is corrupt",
                         revision));

  /* get streams */
  start_rev_stream = FUNC5(root);
  tag_stream = FUNC9(start_rev_stream);

  /* read ids array */
  count = FUNC8(start_rev_stream);
  *manifest = FUNC1(result_pool, (int)count,
                            sizeof(manifest_entry_t));

  for (i = 0; i < count; ++i)
    {
      manifest_entry_t *entry = FUNC2(*manifest);
      entry->start_rev = (svn_revnum_t)FUNC6(start_rev_stream);
      entry->tag = FUNC7(tag_stream);
    }

  return SVN_NO_ERROR;
}