#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {char const* mime_type; int /*<<< orphan*/  lock_state; int /*<<< orphan*/  prop_state; int /*<<< orphan*/  content_state; int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  svn_string_t ;
struct TYPE_15__ {scalar_t__ special; } ;
typedef  TYPE_2__ svn_io_dirent2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_16__ {int /*<<< orphan*/  (* close_file ) (void*,char const*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* change_file_prop ) (void*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* add_file ) (char const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ;} ;
typedef  TYPE_3__ svn_delta_editor_t ;
struct TYPE_17__ {int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_4__ svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
struct TYPE_18__ {int /*<<< orphan*/  autoprops; int /*<<< orphan*/  magic_cookie; int /*<<< orphan*/  repos_changed; } ;
typedef  TYPE_5__ import_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/  SVN_PROP_BOOLEAN_TRUE ; 
 char const* SVN_PROP_SPECIAL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const*,void*,TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC8 (void*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (void*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (void*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC15 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_node_file ; 
 int /*<<< orphan*/  FUNC17 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC19 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_commit_added ; 
 int /*<<< orphan*/  svn_wc_notify_lock_state_inapplicable ; 
 int /*<<< orphan*/  svn_wc_notify_state_inapplicable ; 

__attribute__((used)) static svn_error_t *
FUNC20(const svn_delta_editor_t *editor,
            void *dir_baton,
            const char *local_abspath,
            const char *edit_path,
            const svn_io_dirent2_t *dirent,
            import_ctx_t *import_ctx,
            svn_client_ctx_t *ctx,
            apr_pool_t *pool)
{
  void *file_baton;
  const char *mimetype = NULL;
  svn_checksum_t *result_md5_checksum;
  const char *text_checksum;
  apr_hash_t* properties;
  apr_hash_index_t *hi;

  FUNC0(FUNC17(local_abspath, pool));

  /* Add the file, using the pool from the FILES hash. */
  FUNC0(editor->add_file(edit_path, dir_baton, NULL, SVN_INVALID_REVNUM,
                           pool, &file_baton));

  /* Remember that the repository was modified */
  import_ctx->repos_changed = TRUE;

  if (! dirent->special)
    {
      /* add automatic properties */
      FUNC0(FUNC13(&properties, &mimetype,
                                               local_abspath,
                                               import_ctx->magic_cookie,
                                               import_ctx->autoprops,
                                               ctx, pool, pool));
    }
  else
    properties = FUNC2(pool);

  if (properties)
    {
      for (hi = FUNC1(pool, properties); hi; hi = FUNC3(hi))
        {
          const char *pname = FUNC4(hi);
          const svn_string_t *pval = FUNC5(hi);

          FUNC0(editor->change_file_prop(file_baton, pname, pval, pool));
        }
    }

  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify
        = FUNC19(local_abspath, svn_wc_notify_commit_added,
                               pool);
      notify->kind = svn_node_file;
      notify->mime_type = mimetype;
      notify->content_state = notify->prop_state
        = svn_wc_notify_state_inapplicable;
      notify->lock_state = svn_wc_notify_lock_state_inapplicable;
      ctx->notify_func2(ctx->notify_baton2, notify, pool);
    }

  /* If this is a special file, we need to set the svn:special
     property and create a temporary detranslated version in order to
     send to the server. */
  if (dirent->special)
    {
      FUNC16(properties, SVN_PROP_SPECIAL,
                    FUNC18(SVN_PROP_BOOLEAN_TRUE, pool));
      FUNC0(editor->change_file_prop(file_baton, SVN_PROP_SPECIAL,
                                       FUNC15(properties,
                                                     SVN_PROP_SPECIAL),
                                       pool));
    }

  /* Now, transmit the file contents. */
  FUNC0(FUNC6(&result_md5_checksum, local_abspath,
                             file_baton, editor, properties, pool));

  /* Finally, close the file. */
  text_checksum = FUNC12(result_md5_checksum, pool);
  return FUNC14(editor->close_file(file_baton, text_checksum, pool));
}