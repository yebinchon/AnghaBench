#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_13__ {int code; } ;
struct TYPE_14__ {char* method; char const* path; char* body_type; TYPE_1__ sline; scalar_t__ server_error; TYPE_4__* body_delegate_baton; int /*<<< orphan*/  body_delegate; TYPE_4__* header_delegate_baton; void* header_delegate; struct TYPE_14__* response_baton; void* response_handler; void* no_fail_on_http_failure_status; } ;
typedef  TYPE_2__ svn_ra_serf__handler_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_15__ {TYPE_11__* commit_ctx; int /*<<< orphan*/  working_url; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_3__ dir_context_t ;
struct TYPE_16__ {void* non_recursive_if; TYPE_11__* commit_ctx; int /*<<< orphan*/  revision; int /*<<< orphan*/  relpath; } ;
typedef  TYPE_4__ delete_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_12__ {int /*<<< orphan*/ * pool; int /*<<< orphan*/  deleted_entries; int /*<<< orphan*/  session; int /*<<< orphan*/  txn_root_url; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* TRUE ; 
 scalar_t__ FUNC1 (TYPE_11__*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  create_delete_body ; 
 void* setup_delete_headers ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* svn_ra_serf__expect_empty_body ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 char const* FUNC12 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC13(const char *path,
             svn_revnum_t revision,
             void *parent_baton,
             apr_pool_t *pool)
{
  dir_context_t *dir = parent_baton;
  delete_context_t *delete_ctx;
  svn_ra_serf__handler_t *handler;
  const char *delete_target;

  if (FUNC1(dir->commit_ctx))
    {
      delete_target = FUNC7(
                                    dir->commit_ctx->txn_root_url,
                                    path, dir->pool);
    }
  else
    {
      /* Ensure our directory has been checked out */
      FUNC0(FUNC4(dir, pool /* scratch_pool */));
      delete_target = FUNC7(dir->working_url,
                                                  FUNC12(path,
                                                                       NULL),
                                                  pool);
    }

  /* DELETE our entry */
  delete_ctx = FUNC2(pool, sizeof(*delete_ctx));
  delete_ctx->relpath = FUNC3(pool, path);
  delete_ctx->revision = revision;
  delete_ctx->commit_ctx = dir->commit_ctx;

  handler = FUNC9(dir->commit_ctx->session, pool);

  handler->response_handler = svn_ra_serf__expect_empty_body;
  handler->response_baton = handler;

  handler->header_delegate = setup_delete_headers;
  handler->header_delegate_baton = delete_ctx;

  handler->method = "DELETE";
  handler->path = delete_target;
  handler->no_fail_on_http_failure_status = TRUE;

  FUNC0(FUNC8(handler, pool));

  if (handler->sline.code == 400)
    {
      /* Try again with non-standard body to overcome Apache Httpd
         header limit */
      delete_ctx->non_recursive_if = TRUE;

      handler = FUNC9(dir->commit_ctx->session, pool);

      handler->response_handler = svn_ra_serf__expect_empty_body;
      handler->response_baton = handler;

      handler->header_delegate = setup_delete_headers;
      handler->header_delegate_baton = delete_ctx;

      handler->method = "DELETE";
      handler->path = delete_target;

      handler->body_type = "text/xml";
      handler->body_delegate = create_delete_body;
      handler->body_delegate_baton = delete_ctx;

      FUNC0(FUNC8(handler, pool));
    }

  if (handler->server_error)
    return FUNC10(handler, pool);

  /* 204 No Content: item successfully deleted */
  if (handler->sline.code != 204)
    return FUNC5(FUNC11(handler));

  FUNC6(dir->commit_ctx->deleted_entries,
                FUNC3(dir->commit_ctx->pool, path), (void *)1);

  return SVN_NO_ERROR;
}