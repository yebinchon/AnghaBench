#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {char const* path; int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  scalar_t__ svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_16__ {int /*<<< orphan*/  (* close_file ) (void*,char const*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* apply_textdelta ) (void*,char const*,int /*<<< orphan*/ *,scalar_t__*,void**) ;} ;
typedef  TYPE_2__ svn_delta_editor_t ;
struct TYPE_17__ {int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_3__ svn_client_ctx_t ;
struct TYPE_18__ {scalar_t__ kind; } ;
typedef  TYPE_4__ svn_checksum_t ;
struct TYPE_19__ {int /*<<< orphan*/ * base_stream; TYPE_4__* base_checksum; int /*<<< orphan*/ * src_stream; TYPE_4__* src_checksum; } ;
typedef  TYPE_5__ mtcc_op_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*,TYPE_5__*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,char const*,int /*<<< orphan*/ *,scalar_t__*,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_checksum_md5 ; 
 char* FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_delta_noop_window_handler ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_node_file ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,TYPE_4__**,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,void*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_commit_postfix_txdelta ; 

__attribute__((used)) static svn_error_t *
FUNC13(const svn_delta_editor_t *editor,
            mtcc_op_t *op,
            void *file_baton,
            const char *session_url,
            const char *relpath,
            svn_client_ctx_t *ctx,
            apr_pool_t *scratch_pool)
{
  const char *text_checksum = NULL;
  svn_checksum_t *src_checksum = op->src_checksum;
  FUNC0(FUNC1(editor, op, file_baton, scratch_pool));

  if (op->src_stream)
    {
      const char *base_checksum = NULL;
      apr_pool_t *txdelta_pool = scratch_pool;
      svn_txdelta_window_handler_t window_handler;
      void *handler_baton;
      svn_stream_t *src_stream = op->src_stream;

      if (op->base_checksum && op->base_checksum->kind == svn_checksum_md5)
        base_checksum = FUNC5(op->base_checksum, scratch_pool);

      /* ### TODO: Future enhancement: Allocate in special pool and send
                   files after the true edit operation, like a wc commit */
      FUNC0(editor->apply_textdelta(file_baton, base_checksum, txdelta_pool,
                                      &window_handler, &handler_baton));

      if (ctx->notify_func2)
        {
          svn_wc_notify_t *notify;

          notify = FUNC12(
                            FUNC7(session_url, relpath,
                                                        scratch_pool),
                            svn_wc_notify_commit_postfix_txdelta,
                            scratch_pool);

          notify->path = relpath;
          notify->kind = svn_node_file;

          ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
        }

      if (window_handler != svn_delta_noop_window_handler)
        {
          if (!src_checksum || src_checksum->kind != svn_checksum_md5)
            src_stream = FUNC8(src_stream, &src_checksum, NULL,
                                                 svn_checksum_md5,
                                                 TRUE, scratch_pool);

          if (!op->base_stream)
            FUNC0(FUNC11(src_stream,
                                            window_handler, handler_baton, NULL,
                                            scratch_pool));
          else
            FUNC0(FUNC10(op->base_stream, src_stream,
                                    window_handler, handler_baton,
                                    svn_checksum_md5, NULL,
                                    ctx->cancel_func, ctx->cancel_baton,
                                    scratch_pool, scratch_pool));
        }

      FUNC0(FUNC9(src_stream));
      if (op->base_stream)
        FUNC0(FUNC9(op->base_stream));
    }

  if (src_checksum && src_checksum->kind == svn_checksum_md5)
    text_checksum = FUNC5(src_checksum, scratch_pool);

  return FUNC6(editor->close_file(file_baton, text_checksum,
                                            scratch_pool));
}