#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int code; } ;
struct TYPE_13__ {TYPE_3__ sline; scalar_t__ server_error; } ;
typedef  TYPE_4__ svn_ra_serf__handler_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  serf_request_t ;
struct TYPE_14__ {scalar_t__ fetch_props; int /*<<< orphan*/  fetch_file; TYPE_2__* parent_dir; } ;
typedef  TYPE_5__ file_baton_t ;
struct TYPE_15__ {TYPE_4__* handler; TYPE_5__* file; } ;
typedef  TYPE_6__ fetch_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_11__ {TYPE_1__* ctx; } ;
struct TYPE_10__ {int /*<<< orphan*/  num_active_fetches; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 

__attribute__((used)) static svn_error_t *
FUNC4(serf_request_t *request,
                void *baton,
                apr_pool_t *scratch_pool)
{
  fetch_ctx_t *fetch_ctx = baton;
  file_baton_t *file = fetch_ctx->file;
  svn_ra_serf__handler_t *handler = fetch_ctx->handler;

  if (handler->server_error)
      return FUNC1(FUNC2(handler,
                                                              scratch_pool));

  if (handler->sline.code != 200)
    return FUNC1(FUNC3(handler));

  file->parent_dir->ctx->num_active_fetches--;

  file->fetch_file = FALSE;

  if (file->fetch_props)
    return SVN_NO_ERROR; /* Still processing PROPFIND request */

  /* Closing the file will automatically deliver the propfind props.
   *
   * Note that closing the directory may dispose the pool containing the
   * handler, fetch_ctx, etc. which is only a valid operation in this
   * callback, as only after this callback our serf plumbing assumes the
   * request is done. */
  return FUNC1(FUNC0(file, scratch_pool));
}