
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_serf__xml_estate_t ;
typedef int svn_error_t ;
struct revision_report_t {struct replay_node_t* current_node; } ;
struct replay_node_t {scalar_t__ stream; int file; } ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 int REPLAY_APPLY_TEXTDELTA ;
 int SVN_ERR (int ) ;
 int SVN_ERR_STREAM_UNEXPECTED_EOF ;
 int SVN_ERR_XML_MALFORMED ;
 int * SVN_NO_ERROR ;
 int * _ (char*) ;
 int * svn_error_create (int ,int *,int *) ;
 int svn_stream_write (scalar_t__,char const*,scalar_t__*) ;

__attribute__((used)) static svn_error_t *
replay_cdata(svn_ra_serf__xml_estate_t *xes,
             void *baton,
             int current_state,
             const char *data,
             apr_size_t len,
             apr_pool_t *scratch_pool)
{
  struct revision_report_t *ctx = baton;

  if (current_state == REPLAY_APPLY_TEXTDELTA)
    {
      struct replay_node_t *node = ctx->current_node;

      if (! node || ! node->file)
        return svn_error_create(SVN_ERR_XML_MALFORMED, ((void*)0), ((void*)0));

      if (node->stream)
        {
          apr_size_t written = len;

          SVN_ERR(svn_stream_write(node->stream, data, &written));
          if (written != len)
            return svn_error_create(SVN_ERR_STREAM_UNEXPECTED_EOF, ((void*)0),
                                    _("Error writing stream: unexpected EOF"));
        }
    }

  return SVN_NO_ERROR;
}
