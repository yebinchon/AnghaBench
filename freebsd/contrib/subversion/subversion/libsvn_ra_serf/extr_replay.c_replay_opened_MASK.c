#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__xml_estate_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__dav_props_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct revision_report_t {TYPE_2__* editor; struct replay_node_t* current_node; int /*<<< orphan*/  pool; int /*<<< orphan*/  rev_props; int /*<<< orphan*/  editor_baton; int /*<<< orphan*/  replay_baton; int /*<<< orphan*/  revision; int /*<<< orphan*/  (* revstart_func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_1__* propfind_handler; } ;
struct replay_node_t {int /*<<< orphan*/  pool; scalar_t__ stream; int /*<<< orphan*/  baton; int /*<<< orphan*/  file; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* apply_textdelta ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,scalar_t__*,void**) ;} ;
struct TYPE_3__ {scalar_t__ done; } ;

/* Variables and functions */
 int REPLAY_APPLY_TEXTDELTA ; 
 int REPLAY_REPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_XML_MALFORMED ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,scalar_t__*,void**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_delta_noop_window_handler ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_ra_serf__xml_estate_t *xes,
              void *baton,
              int entered_state,
              const svn_ra_serf__dav_props_t *tag,
              apr_pool_t *scratch_pool)
{
  struct revision_report_t *ctx = baton;

  if (entered_state == REPLAY_REPORT)
    {
      /* Before we can continue, we need the revision properties. */
      FUNC1(!ctx->propfind_handler || ctx->propfind_handler->done);

      FUNC7(ctx->rev_props, scratch_pool);

      if (ctx->revstart_func)
        {
          FUNC0(ctx->revstart_func(ctx->revision, ctx->replay_baton,
                                     &ctx->editor, &ctx->editor_baton,
                                     ctx->rev_props,
                                     ctx->pool));
        }
    }
  else if (entered_state == REPLAY_APPLY_TEXTDELTA)
    {
       struct replay_node_t *node = ctx->current_node;
       apr_hash_t *attrs;
       const char *checksum;
       svn_txdelta_window_handler_t handler;
       void *handler_baton;

       if (! node || ! node->file || node->stream)
         return FUNC5(SVN_ERR_XML_MALFORMED, NULL, NULL);

       /* ### Is there a better way to access a specific attr here? */
       attrs = FUNC8(xes, REPLAY_APPLY_TEXTDELTA);
       checksum = FUNC6(attrs, "checksum");

       FUNC0(ctx->editor->apply_textdelta(node->baton, checksum, node->pool,
                                            &handler, &handler_baton));

       if (handler != svn_delta_noop_window_handler)
         {
            node->stream = FUNC4(
                                    FUNC9(handler,
                                                              handler_baton,
                                                              TRUE,
                                                              node->pool),
                                    node->pool);
         }
    }

  return SVN_NO_ERROR;
}