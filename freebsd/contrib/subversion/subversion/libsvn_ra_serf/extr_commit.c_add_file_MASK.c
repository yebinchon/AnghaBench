#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_7__ ;
typedef  struct TYPE_36__   TYPE_6__ ;
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_26__ ;
typedef  struct TYPE_30__   TYPE_1__ ;
typedef  struct TYPE_29__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_30__ {int code; } ;
struct TYPE_33__ {char* method; char const* path; void* no_dav_headers; struct TYPE_33__* response_baton; void* response_handler; TYPE_1__ sline; TYPE_5__* header_delegate_baton; int /*<<< orphan*/  header_delegate; } ;
typedef  TYPE_3__ svn_ra_serf__handler_t ;
struct TYPE_34__ {scalar_t__ apr_err; } ;
typedef  TYPE_4__ svn_error_t ;
struct TYPE_35__ {char const* name; int /*<<< orphan*/ * pool; void* url; int /*<<< orphan*/  prop_changes; int /*<<< orphan*/  copy_revision; void* copy_path; int /*<<< orphan*/  base_revision; void* added; void* relpath; TYPE_26__* commit_ctx; TYPE_6__* parent_dir; } ;
typedef  TYPE_5__ file_context_t ;
struct TYPE_36__ {TYPE_26__* commit_ctx; int /*<<< orphan*/  copy_path; scalar_t__ added; int /*<<< orphan*/  working_url; } ;
typedef  TYPE_6__ dir_context_t ;
struct TYPE_37__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_7__ apr_uri_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_32__ {int /*<<< orphan*/  path; } ;
struct TYPE_31__ {TYPE_12__* session; int /*<<< orphan*/  deleted_entries; int /*<<< orphan*/  txn_root_url; int /*<<< orphan*/  open_batons; } ;
struct TYPE_29__ {TYPE_2__ session_url; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  SVN_ERR_FS_ALREADY_EXISTS ; 
 scalar_t__ SVN_ERR_FS_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 TYPE_4__* SVN_NO_ERROR ; 
 void* TRUE ; 
 scalar_t__ FUNC1 (TYPE_26__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const*,TYPE_7__*) ; 
 TYPE_4__* FUNC7 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  setup_copy_file_headers ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 TYPE_4__* FUNC10 (TYPE_4__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char const*) ; 
 void* FUNC12 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC15 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC16 (TYPE_12__*,int /*<<< orphan*/ *) ; 
 void* svn_ra_serf__expect_empty_body ; 
 TYPE_4__* FUNC17 (char const**,int /*<<< orphan*/ *,TYPE_12__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC18 (TYPE_3__*) ; 
 TYPE_4__* FUNC19 (scalar_t__,int /*<<< orphan*/ *) ; 
 char const* FUNC20 (void*,int /*<<< orphan*/ *) ; 
 char* FUNC21 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC22(const char *path,
         void *parent_baton,
         const char *copy_path,
         svn_revnum_t copy_revision,
         apr_pool_t *file_pool,
         void **file_baton)
{
  dir_context_t *dir = parent_baton;
  file_context_t *new_file;
  const char *deleted_parent = path;
  apr_pool_t *scratch_pool = FUNC13(file_pool);

  new_file = FUNC4(file_pool, sizeof(*new_file));
  new_file->pool = file_pool;

  new_file->parent_dir = dir;
  new_file->commit_ctx = dir->commit_ctx;
  new_file->relpath = FUNC5(new_file->pool, path);
  new_file->name = FUNC20(new_file->relpath, NULL);
  new_file->added = TRUE;
  new_file->base_revision = SVN_INVALID_REVNUM;
  new_file->copy_path = FUNC5(new_file->pool, copy_path);
  new_file->copy_revision = copy_revision;
  new_file->prop_changes = FUNC3(new_file->pool);

  dir->commit_ctx->open_batons++;

  /* Ensure that the file doesn't exist by doing a HEAD on the
     resource.  If we're using HTTP v2, we'll just look into the
     transaction root tree for this thing.  */
  if (FUNC1(dir->commit_ctx))
    {
      new_file->url = FUNC12(dir->commit_ctx->txn_root_url,
                                                  path, new_file->pool);
    }
  else
    {
      /* Ensure our parent directory has been checked out */
      FUNC0(FUNC7(dir, scratch_pool));

      new_file->url =
        FUNC12(dir->working_url,
                                    new_file->name, new_file->pool);
    }

  while (deleted_parent && deleted_parent[0] != '\0')
    {
      if (FUNC11(dir->commit_ctx->deleted_entries, deleted_parent))
        {
          break;
        }
      deleted_parent = FUNC21(deleted_parent, file_pool);
    }

  if (copy_path)
    {
      svn_ra_serf__handler_t *handler;
      apr_uri_t uri;
      const char *req_url;
      apr_status_t status;

      /* Create the copy directly as cheap 'does exist/out of date'
         check. We update the copy (if needed) from close_file() */

      status = FUNC6(scratch_pool, copy_path, &uri);
      if (status)
        return FUNC19(status, NULL);

      FUNC0(FUNC17(&req_url, NULL /* latest_revnum */,
                                          dir->commit_ctx->session,
                                          uri.path, copy_revision,
                                          scratch_pool, scratch_pool));

      handler = FUNC16(dir->commit_ctx->session,
                                            scratch_pool);
      handler->method = "COPY";
      handler->path = req_url;

      handler->response_handler = svn_ra_serf__expect_empty_body;
      handler->response_baton = handler;

      handler->header_delegate = setup_copy_file_headers;
      handler->header_delegate_baton = new_file;

      FUNC0(FUNC15(handler, scratch_pool));

      if (handler->sline.code != 201)
        return FUNC10(FUNC18(handler));
    }
  else if (! ((dir->added && !dir->copy_path) ||
           (deleted_parent && deleted_parent[0] != '\0')))
    {
      svn_ra_serf__handler_t *handler;
      svn_error_t *err;

      handler = FUNC16(dir->commit_ctx->session,
                                            scratch_pool);
      handler->method = "HEAD";
      handler->path = FUNC12(
                                        dir->commit_ctx->session->session_url.path,
                                        path, scratch_pool);
      handler->response_handler = svn_ra_serf__expect_empty_body;
      handler->response_baton = handler;
      handler->no_dav_headers = TRUE; /* Read only operation outside txn */

      err = FUNC15(handler, scratch_pool);

      if (err && err->apr_err == SVN_ERR_FS_NOT_FOUND)
        {
          FUNC8(err); /* Great. We can create a new file! */
        }
      else if (err)
        return FUNC10(err);
      else
        return FUNC9(SVN_ERR_FS_ALREADY_EXISTS, NULL,
                                 FUNC2("File '%s' already exists"), path);
    }

  FUNC14(scratch_pool);
  *file_baton = new_file;

  return SVN_NO_ERROR;
}