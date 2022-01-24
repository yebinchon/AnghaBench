#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
typedef  TYPE_2__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
struct TYPE_10__ {int change_kind; scalar_t__ node_kind; scalar_t__ mergeinfo_mod; int /*<<< orphan*/  copyfrom_path; int /*<<< orphan*/  copyfrom_rev; TYPE_1__ path; scalar_t__ prop_mod; scalar_t__ text_mod; } ;
typedef  TYPE_3__ svn_fs_x__change_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char* ACTION_ADD ; 
 char* ACTION_DELETE ; 
 char* ACTION_MODIFY ; 
 char* ACTION_REPLACE ; 
 int /*<<< orphan*/  FLAG_FALSE ; 
 int /*<<< orphan*/  FLAG_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/  SVN_FS_X__KIND_DIR ; 
 int /*<<< orphan*/  SVN_FS_X__KIND_FILE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
#define  svn_fs_path_change_add 131 
#define  svn_fs_path_change_delete 130 
#define  svn_fs_path_change_modify 129 
#define  svn_fs_path_change_replace 128 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *,char*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_tristate_true ; 

__attribute__((used)) static svn_error_t *
FUNC11(svn_stream_t *stream,
                   svn_fs_x__change_t *change,
                   apr_pool_t *scratch_pool)
{
  const char *change_string = NULL;
  const char *kind_string = "";
  svn_stringbuf_t *buf;
  apr_size_t len;

  switch (change->change_kind)
    {
    case svn_fs_path_change_modify:
      change_string = ACTION_MODIFY;
      break;
    case svn_fs_path_change_add:
      change_string = ACTION_ADD;
      break;
    case svn_fs_path_change_delete:
      change_string = ACTION_DELETE;
      break;
    case svn_fs_path_change_replace:
      change_string = ACTION_REPLACE;
      break;
    default:
      return FUNC5(SVN_ERR_FS_CORRUPT, NULL,
                               FUNC2("Invalid change type %d"),
                               change->change_kind);
    }

  FUNC0(change->node_kind == svn_node_dir
                 || change->node_kind == svn_node_file);
  kind_string = FUNC3(scratch_pool, "-%s",
                             change->node_kind == svn_node_dir
                             ? SVN_FS_X__KIND_DIR
                             : SVN_FS_X__KIND_FILE);

  buf = FUNC10(scratch_pool, "%s%s %s %s %s %s\n",
                              change_string, kind_string,
                              change->text_mod ? FLAG_TRUE : FLAG_FALSE,
                              change->prop_mod ? FLAG_TRUE : FLAG_FALSE,
                              change->mergeinfo_mod == svn_tristate_true
                                               ? FLAG_TRUE : FLAG_FALSE,
                              FUNC4(change->path.data, scratch_pool));

  if (FUNC1(change->copyfrom_rev))
    {
      FUNC9(buf, FUNC3(scratch_pool, "%ld %s",
                               change->copyfrom_rev,
                               FUNC4(change->copyfrom_path,
                                                scratch_pool)));
    }

  FUNC8(buf, '\n');

  /* Write all change info in one write call. */
  len = buf->len;
  return FUNC6(FUNC7(stream, buf->data, &len));
}