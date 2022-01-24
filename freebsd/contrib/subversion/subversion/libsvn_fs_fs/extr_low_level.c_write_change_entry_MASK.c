#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
struct TYPE_9__ {int change_kind; scalar_t__ node_kind; scalar_t__ mergeinfo_mod; int /*<<< orphan*/  copyfrom_path; int /*<<< orphan*/  copyfrom_rev; scalar_t__ prop_mod; scalar_t__ text_mod; scalar_t__ node_rev_id; } ;
typedef  TYPE_2__ svn_fs_path_change2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_10__ {char* data; } ;

/* Variables and functions */
 char* ACTION_ADD ; 
 char* ACTION_DELETE ; 
 char* ACTION_MODIFY ; 
 char* ACTION_REPLACE ; 
 char* ACTION_RESET ; 
 int /*<<< orphan*/  FLAG_FALSE ; 
 int /*<<< orphan*/  FLAG_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/  SVN_FS_FS__KIND_DIR ; 
 int /*<<< orphan*/  SVN_FS_FS__KIND_FILE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
#define  svn_fs_path_change_add 132 
#define  svn_fs_path_change_delete 131 
#define  svn_fs_path_change_modify 130 
#define  svn_fs_path_change_replace 129 
#define  svn_fs_path_change_reset 128 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,char*,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*) ; 
 scalar_t__ svn_tristate_true ; 
 scalar_t__ svn_tristate_unknown ; 

__attribute__((used)) static svn_error_t *
FUNC11(svn_stream_t *stream,
                   const char *path,
                   svn_fs_path_change2_t *change,
                   svn_boolean_t include_node_kind,
                   svn_boolean_t include_mergeinfo_mods,
                   apr_pool_t *scratch_pool)
{
  const char *idstr;
  const char *change_string = NULL;
  const char *kind_string = "";
  const char *mergeinfo_string = "";
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
    case svn_fs_path_change_reset:
      change_string = ACTION_RESET;
      break;
    default:
      return FUNC4(SVN_ERR_FS_CORRUPT, NULL,
                               FUNC2("Invalid change type %d"),
                               change->change_kind);
    }

  if (change->node_rev_id)
    idstr = FUNC6(change->node_rev_id, scratch_pool)->data;
  else
    idstr = ACTION_RESET;

  if (include_node_kind)
    {
      FUNC0(change->node_kind == svn_node_dir
                     || change->node_kind == svn_node_file);
      kind_string = FUNC3(scratch_pool, "-%s",
                                 change->node_kind == svn_node_dir
                                 ? SVN_FS_FS__KIND_DIR
                                  : SVN_FS_FS__KIND_FILE);
    }

  if (include_mergeinfo_mods && change->mergeinfo_mod != svn_tristate_unknown)
    mergeinfo_string = FUNC3(scratch_pool, " %s",
                                    change->mergeinfo_mod == svn_tristate_true
                                      ? FLAG_TRUE
                                      : FLAG_FALSE);

  buf = FUNC10(scratch_pool, "%s %s%s %s %s%s %s\n",
                              idstr, change_string, kind_string,
                              change->text_mod ? FLAG_TRUE : FLAG_FALSE,
                              change->prop_mod ? FLAG_TRUE : FLAG_FALSE,
                              mergeinfo_string,
                              path);

  if (FUNC1(change->copyfrom_rev))
    {
      FUNC9(buf, FUNC3(scratch_pool, "%ld %s",
                                                 change->copyfrom_rev,
                                                 change->copyfrom_path));
    }

   FUNC8(buf, '\n');

   /* Write all change info in one write call. */
   len = buf->len;
   return FUNC5(FUNC7(stream, buf->data, &len));
}