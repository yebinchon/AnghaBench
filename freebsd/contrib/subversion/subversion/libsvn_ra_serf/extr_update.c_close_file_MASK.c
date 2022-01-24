#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {TYPE_1__* editor; int /*<<< orphan*/  add_props_included; } ;
typedef  TYPE_2__ report_context_t ;
struct TYPE_10__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  final_md5_checksum; int /*<<< orphan*/  file_baton; scalar_t__ url; int /*<<< orphan*/  base_rev; int /*<<< orphan*/  found_lock_prop; scalar_t__ lock_token; scalar_t__ remove_props; TYPE_4__* parent_dir; } ;
typedef  TYPE_3__ file_baton_t ;
struct TYPE_11__ {TYPE_2__* ctx; } ;
typedef  TYPE_4__ dir_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_8__ {int /*<<< orphan*/  (* close_file ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* change_file_prop ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_ENTRY_LOCK_TOKEN ; 
 int /*<<< orphan*/  SVN_RA_SERF__WC_CHECKED_IN_URL ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC14(file_baton_t *file,
           apr_pool_t *scratch_pool)
{
  dir_baton_t *parent_dir = file->parent_dir;
  report_context_t *ctx = parent_dir->ctx;

  FUNC0(FUNC5(file, scratch_pool));

  /* Set all of the properties we received */
  if (file->remove_props)
    {
      apr_hash_index_t *hi;

      for (hi = FUNC2(scratch_pool, file->remove_props);
           hi;
           hi = FUNC3(hi))
        {
          FUNC0(ctx->editor->change_file_prop(file->file_baton,
                                                FUNC4(hi),
                                                NULL /* value */,
                                                scratch_pool));
        }
    }

  /* Check for lock information. */

  /* This works around a bug in some older versions of mod_dav_svn in that it
   * will not send remove-prop in the update report when a lock property
   * disappears when send-all is false.

   ### Given that we only fetch props on additions, is this really necessary?
       Or is it covering up old local copy bugs where we copied locks to other
       paths? */
  if (!ctx->add_props_included
      && file->lock_token && !file->found_lock_prop
      && FUNC1(file->base_rev) /* file_is_added */)
    {
      FUNC0(ctx->editor->change_file_prop(file->file_baton,
                                            SVN_PROP_ENTRY_LOCK_TOKEN,
                                            NULL,
                                            scratch_pool));
    }

  if (file->url)
    {
      FUNC0(ctx->editor->change_file_prop(file->file_baton,
                                            SVN_RA_SERF__WC_CHECKED_IN_URL,
                                            FUNC13(file->url,
                                                              scratch_pool),
                                            scratch_pool));
    }

  /* Close the file via the editor. */
  FUNC0(ctx->editor->close_file(file->file_baton,
                                  FUNC11(
                                        file->final_md5_checksum,
                                        scratch_pool),
                                  scratch_pool));

  FUNC12(file->pool);

  FUNC0(FUNC6(parent_dir)); /* Remove reference */

  return SVN_NO_ERROR;
}