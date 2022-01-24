#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_13__ {int /*<<< orphan*/  (* file_closed ) (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,TYPE_1__ const*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* file_changed ) (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_3__*,void*,TYPE_1__ const*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* file_added ) (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,TYPE_1__ const*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* file_deleted ) (char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,void*,TYPE_1__ const*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* file_opened ) (void**,scalar_t__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ svn_diff_tree_processor_t ;
typedef  int /*<<< orphan*/  svn_diff_source_t ;
struct TYPE_14__ {int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; int /*<<< orphan*/  mimetypes_map; int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_2__ svn_client_ctx_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_15__ {scalar_t__ nelts; } ;
typedef  TYPE_3__ apr_array_header_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_MIME_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void**,scalar_t__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,void*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_3__*,void*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC16(const char *left_abspath,
             const char *right_abspath,
             const char *left_root_abspath,
             const char *right_root_abspath,
             svn_boolean_t left_only,
             svn_boolean_t right_only,
             void *parent_baton,
             const svn_diff_tree_processor_t *diff_processor,
             svn_client_ctx_t *ctx,
             apr_pool_t *scratch_pool)
{
  const char *relpath;
  svn_diff_source_t *left_source;
  svn_diff_source_t *right_source;
  svn_boolean_t skip = FALSE;
  apr_hash_t *left_props;
  apr_hash_t *right_props;
  void *file_baton;

  relpath = FUNC8(left_root_abspath, left_abspath);

 if (! right_only)
    left_source = FUNC7(SVN_INVALID_REVNUM, scratch_pool);
  else
    left_source = NULL;

  if (! left_only)
    right_source = FUNC7(SVN_INVALID_REVNUM, scratch_pool);
  else
    right_source = NULL;

  FUNC0(diff_processor->file_opened(&file_baton, &skip,
                                      relpath,
                                      left_source,
                                      right_source,
                                      NULL /* copyfrom_source */,
                                      parent_baton,
                                      diff_processor,
                                      scratch_pool,
                                      scratch_pool));

  if (skip)
    return SVN_NO_ERROR;

   if (! right_only)
    {
      FUNC0(FUNC1(&left_props, left_abspath, ctx->wc_ctx,
                        scratch_pool, scratch_pool));

      /* We perform a mimetype detection to avoid diffing binary files
         for textual changes.*/
      if (! FUNC9(left_props, SVN_PROP_MIME_TYPE))
        {
          const char *mime_type;

          /* ### Use libmagic magic? */
          FUNC0(FUNC11(&mime_type, left_abspath,
                                          ctx->mimetypes_map, scratch_pool));

          if (mime_type)
            FUNC10(left_props, SVN_PROP_MIME_TYPE,
                          FUNC14(mime_type, scratch_pool));
        }

      FUNC0(FUNC15(&left_abspath, left_props,
                                     ctx->cancel_func, ctx->cancel_baton,
                                     scratch_pool, scratch_pool));
    }
  else
    left_props = NULL;

  if (! left_only)
    {
      FUNC0(FUNC1(&right_props, right_abspath, ctx->wc_ctx,
                        scratch_pool, scratch_pool));

      /* We perform a mimetype detection to avoid diffing binary files
         for textual changes.*/
      if (! FUNC9(right_props, SVN_PROP_MIME_TYPE))
        {
          const char *mime_type;

          /* ### Use libmagic magic? */
          FUNC0(FUNC11(&mime_type, right_abspath,
                                          ctx->mimetypes_map, scratch_pool));

          if (mime_type)
            FUNC10(right_props, SVN_PROP_MIME_TYPE,
                          FUNC14(mime_type, scratch_pool));
        }

      FUNC0(FUNC15(&right_abspath, right_props,
                                     ctx->cancel_func, ctx->cancel_baton,
                                     scratch_pool, scratch_pool));

    }
  else
    right_props = NULL;

  if (left_only)
    {
      FUNC0(diff_processor->file_deleted(relpath,
                                           left_source,
                                           left_abspath,
                                           left_props,
                                           file_baton,
                                           diff_processor,
                                           scratch_pool));
    }
  else if (right_only)
    {
      FUNC0(diff_processor->file_added(relpath,
                                         NULL /* copyfrom_source */,
                                         right_source,
                                         NULL /* copyfrom_file */,
                                         right_abspath,
                                         NULL /* copyfrom_props */,
                                         right_props,
                                         file_baton,
                                         diff_processor,
                                         scratch_pool));
    }
  else
    {
      /* ### Perform diff -> close/changed */
      svn_boolean_t same;
      apr_array_header_t *prop_changes;

      FUNC0(FUNC12(&same, left_abspath, right_abspath,
                                           scratch_pool));

      FUNC0(FUNC13(&prop_changes, right_props, left_props,
                             scratch_pool));

      if (!same || prop_changes->nelts > 0)
        {
          FUNC0(diff_processor->file_changed(relpath,
                                               left_source,
                                               right_source,
                                               same ? NULL : left_abspath,
                                               same ? NULL : right_abspath,
                                               left_props,
                                               right_props,
                                               !same,
                                               prop_changes,
                                               file_baton,
                                               diff_processor,
                                               scratch_pool));
        }
      else
        {
          FUNC0(diff_processor->file_closed(relpath,
                                            left_source,
                                            right_source,
                                            file_baton,
                                            diff_processor,
                                            scratch_pool));
        }
    }
  return SVN_NO_ERROR;
}