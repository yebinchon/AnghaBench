#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_checksum_t ;
struct editor_baton {int /*<<< orphan*/  edit_pool; int /*<<< orphan*/  changes; } ;
struct change_node {char const* contents_abspath; int /*<<< orphan*/  checksum; int /*<<< orphan*/  contents_changed; int /*<<< orphan*/  props; int /*<<< orphan*/  deleting; int /*<<< orphan*/  kind; int /*<<< orphan*/  action; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  RESTRUCTURE_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 struct change_node* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_checksum_md5 ; 
 int /*<<< orphan*/  svn_io_file_del_on_pool_cleanup ; 
 int /*<<< orphan*/  svn_node_file ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(void *baton,
            const char *relpath,
            const svn_checksum_t *checksum,
            svn_stream_t *contents,
            apr_hash_t *props,
            svn_revnum_t replaces_rev,
            apr_pool_t *scratch_pool)
{
  struct editor_baton *eb = baton;
  const char *tmp_filename;
  svn_stream_t *tmp_stream;
  svn_checksum_t *md5_checksum;
  struct change_node *change = FUNC1(relpath, eb->changes);

  /* We may need to re-checksum these contents */
  if (!(checksum && checksum->kind == svn_checksum_md5))
    contents = FUNC4(contents, &md5_checksum, NULL,
                                       svn_checksum_md5, TRUE, scratch_pool);
  else
    md5_checksum = (svn_checksum_t *)checksum;

  /* Spool the contents to a tempfile, and provide that to the driver. */
  FUNC0(FUNC6(&tmp_stream, &tmp_filename, NULL,
                                 svn_io_file_del_on_pool_cleanup,
                                 eb->edit_pool, scratch_pool));
  FUNC0(FUNC5(contents, tmp_stream, NULL, NULL, scratch_pool));

  change->action = RESTRUCTURE_ADD;
  change->kind = svn_node_file;
  change->deleting = replaces_rev;
  change->props = FUNC3(props, eb->edit_pool);
  change->contents_changed = TRUE;
  change->contents_abspath = tmp_filename;
  change->checksum = FUNC2(md5_checksum, eb->edit_pool);

  return SVN_NO_ERROR;
}