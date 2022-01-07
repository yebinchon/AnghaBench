
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ svn_txdelta_window_handler_t ;
typedef int svn_ra_serf__xml_estate_t ;
typedef int svn_ra_serf__dav_props_t ;
typedef int svn_error_t ;
struct revision_report_t {TYPE_2__* editor; struct replay_node_t* current_node; int pool; int rev_props; int editor_baton; int replay_baton; int revision; int (* revstart_func ) (int ,int ,TYPE_2__**,int *,int ,int ) ;TYPE_1__* propfind_handler; } ;
struct replay_node_t {int pool; scalar_t__ stream; int baton; int file; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_4__ {int (* apply_textdelta ) (int ,char const*,int ,scalar_t__*,void**) ;} ;
struct TYPE_3__ {scalar_t__ done; } ;


 int REPLAY_APPLY_TEXTDELTA ;
 int REPLAY_REPORT ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_XML_MALFORMED ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int stub1 (int ,int ,TYPE_2__**,int *,int ,int ) ;
 int stub2 (int ,char const*,int ,scalar_t__*,void**) ;
 scalar_t__ svn_base64_decode (int ,int ) ;
 scalar_t__ svn_delta_noop_window_handler ;
 int * svn_error_create (int ,int *,int *) ;
 char* svn_hash_gets (int *,char*) ;
 int svn_ra_serf__keep_only_regular_props (int ,int *) ;
 int * svn_ra_serf__xml_gather_since (int *,int) ;
 int svn_txdelta_parse_svndiff (scalar_t__,void*,int ,int ) ;

__attribute__((used)) static svn_error_t *
replay_opened(svn_ra_serf__xml_estate_t *xes,
              void *baton,
              int entered_state,
              const svn_ra_serf__dav_props_t *tag,
              apr_pool_t *scratch_pool)
{
  struct revision_report_t *ctx = baton;

  if (entered_state == REPLAY_REPORT)
    {

      SVN_ERR_ASSERT(!ctx->propfind_handler || ctx->propfind_handler->done);

      svn_ra_serf__keep_only_regular_props(ctx->rev_props, scratch_pool);

      if (ctx->revstart_func)
        {
          SVN_ERR(ctx->revstart_func(ctx->revision, ctx->replay_baton,
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
         return svn_error_create(SVN_ERR_XML_MALFORMED, ((void*)0), ((void*)0));


       attrs = svn_ra_serf__xml_gather_since(xes, REPLAY_APPLY_TEXTDELTA);
       checksum = svn_hash_gets(attrs, "checksum");

       SVN_ERR(ctx->editor->apply_textdelta(node->baton, checksum, node->pool,
                                            &handler, &handler_baton));

       if (handler != svn_delta_noop_window_handler)
         {
            node->stream = svn_base64_decode(
                                    svn_txdelta_parse_svndiff(handler,
                                                              handler_baton,
                                                              TRUE,
                                                              node->pool),
                                    node->pool);
         }
    }

  return SVN_NO_ERROR;
}
