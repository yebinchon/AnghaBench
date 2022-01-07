
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_serf__xml_estate_t ;
typedef int svn_error_t ;
struct revision_report_t {struct replay_node_t* current_node; TYPE_1__* editor; int editor_baton; struct replay_node_t* root_node; int * pool; int rev_props; int replay_baton; int revision; int (* revfinish_func ) (int ,int ,TYPE_1__*,int ,int ,int *) ;} ;
struct replay_node_t {int file; int * stream; int baton; int * pool; struct replay_node_t* parent; } ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;
typedef int apr_hash_t ;
struct TYPE_2__ {int (* change_dir_prop ) (int ,char const*,int const*,int *) ;int (* change_file_prop ) (int ,char const*,int const*,int *) ;int (* delete_entry ) (char const*,int ,int ,int *) ;int (* close_directory ) (int ,int *) ;int (* close_file ) (int ,char*,int *) ;int (* add_file ) (char const*,int ,char*,int ,int *,int *) ;int (* add_directory ) (char const*,int ,char*,int ,int *,int *) ;int (* open_file ) (char const*,int ,int ,int *,int *) ;int (* open_directory ) (char const*,int ,int ,int *,int *) ;int (* open_root ) (int ,int ,int *,int *) ;int (* set_target_revision ) (int ,int ,int *) ;} ;


 void* FALSE ;


 int REPLAY_APPLY_TEXTDELTA ;
 int REPLAY_CHANGE_DIRECTORY_PROP ;
 int REPLAY_CHANGE_FILE_PROP ;
 int REPLAY_CLOSE_DIRECTORY ;
 int REPLAY_CLOSE_FILE ;
 int REPLAY_DELETE_ENTRY ;


 int REPLAY_OPEN_ROOT ;
 int REPLAY_REPORT ;
 int REPLAY_TARGET_REVISION ;
 int SVN_ERR (int ) ;
 int SVN_ERR_XML_MALFORMED ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 void* apr_pcalloc (int *,int) ;
 int stub1 (int ,int ,TYPE_1__*,int ,int ,int *) ;
 int stub10 (char const*,int ,int ,int *) ;
 int stub11 (int ,char const*,int const*,int *) ;
 int stub12 (int ,char const*,int const*,int *) ;
 int stub2 (int ,int ,int *) ;
 int stub3 (int ,int ,int *,int *) ;
 int stub4 (char const*,int ,int ,int *,int *) ;
 int stub5 (char const*,int ,int ,int *,int *) ;
 int stub6 (char const*,int ,char*,int ,int *,int *) ;
 int stub7 (char const*,int ,char*,int ,int *,int *) ;
 int stub8 (int ,char*,int *) ;
 int stub9 (int ,int *) ;
 int * svn_base64_decode_string (int const*,int *) ;
 int svn_cstring_atoi64 (scalar_t__*,char const*) ;
 int * svn_error_create (int ,int *,int *) ;
 char* svn_hash_gets (int *,char*) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_stream_close (int *) ;

__attribute__((used)) static svn_error_t *
replay_closed(svn_ra_serf__xml_estate_t *xes,
              void *baton,
              int leaving_state,
              const svn_string_t *cdata,
              apr_hash_t *attrs,
              apr_pool_t *scratch_pool)
{
  struct revision_report_t *ctx = baton;

  if (leaving_state == REPLAY_REPORT)
    {
      if (ctx->current_node)
        return svn_error_create(SVN_ERR_XML_MALFORMED, ((void*)0), ((void*)0));

      if (ctx->revfinish_func)
        {
          SVN_ERR(ctx->revfinish_func(ctx->revision, ctx->replay_baton,
                                      ctx->editor, ctx->editor_baton,
                                      ctx->rev_props, scratch_pool));
        }
    }
  else if (leaving_state == REPLAY_TARGET_REVISION)
    {
      const char *revstr = svn_hash_gets(attrs, "rev");
      apr_int64_t rev;

      SVN_ERR(svn_cstring_atoi64(&rev, revstr));
      SVN_ERR(ctx->editor->set_target_revision(ctx->editor_baton,
                                               (svn_revnum_t)rev,
                                               scratch_pool));
    }
  else if (leaving_state == REPLAY_OPEN_ROOT)
    {
      const char *revstr = svn_hash_gets(attrs, "rev");
      apr_int64_t rev;
      apr_pool_t *root_pool = svn_pool_create(ctx->pool);

      if (ctx->current_node || ctx->root_node)
        return svn_error_create(SVN_ERR_XML_MALFORMED, ((void*)0), ((void*)0));

      ctx->root_node = apr_pcalloc(root_pool, sizeof(*ctx->root_node));
      ctx->root_node->pool = root_pool;

      ctx->current_node = ctx->root_node;

      SVN_ERR(svn_cstring_atoi64(&rev, revstr));
      SVN_ERR(ctx->editor->open_root(ctx->editor_baton, (svn_revnum_t)rev,
                                     root_pool,
                                     &ctx->current_node->baton));
    }
  else if (leaving_state == 129
           || leaving_state == 128
           || leaving_state == 131
           || leaving_state == 130)
    {
      struct replay_node_t *node;
      apr_pool_t *node_pool;
      const char *name = svn_hash_gets(attrs, "name");
      const char *rev_str;
      apr_int64_t rev;

      if (!ctx->current_node || ctx->current_node->file)
        return svn_error_create(SVN_ERR_XML_MALFORMED, ((void*)0), ((void*)0));

      node_pool = svn_pool_create(ctx->current_node->pool);
      node = apr_pcalloc(node_pool, sizeof(*node));
      node->pool = node_pool;
      node->parent = ctx->current_node;

      if (leaving_state == 129
          || leaving_state == 128)
        {
          rev_str = svn_hash_gets(attrs, "rev");
        }
      else
        rev_str = svn_hash_gets(attrs, "copyfrom-rev");

      if (rev_str)
        SVN_ERR(svn_cstring_atoi64(&rev, rev_str));
      else
        rev = SVN_INVALID_REVNUM;

      switch (leaving_state)
        {
          case 129:
            node->file = FALSE;
            SVN_ERR(ctx->editor->open_directory(name,
                                    ctx->current_node->baton,
                                    (svn_revnum_t)rev,
                                    node->pool,
                                    &node->baton));
            break;
          case 128:
            node->file = TRUE;
            SVN_ERR(ctx->editor->open_file(name,
                                    ctx->current_node->baton,
                                    (svn_revnum_t)rev,
                                    node->pool,
                                    &node->baton));
            break;
          case 131:
            node->file = FALSE;
            SVN_ERR(ctx->editor->add_directory(
                                    name,
                                    ctx->current_node->baton,
                                    SVN_IS_VALID_REVNUM(rev)
                                        ? svn_hash_gets(attrs, "copyfrom-path")
                                        : ((void*)0),
                                    (svn_revnum_t)rev,
                                    node->pool,
                                    &node->baton));
            break;
          case 130:
            node->file = TRUE;
            SVN_ERR(ctx->editor->add_file(
                                    name,
                                    ctx->current_node->baton,
                                    SVN_IS_VALID_REVNUM(rev)
                                        ? svn_hash_gets(attrs, "copyfrom-path")
                                        : ((void*)0),
                                    (svn_revnum_t)rev,
                                    node->pool,
                                    &node->baton));
            break;

        }
      ctx->current_node = node;
    }
  else if (leaving_state == REPLAY_CLOSE_FILE)
    {
      struct replay_node_t *node = ctx->current_node;

      if (! node || ! node->file)
        return svn_error_create(SVN_ERR_XML_MALFORMED, ((void*)0), ((void*)0));

      SVN_ERR(ctx->editor->close_file(node->baton,
                                      svn_hash_gets(attrs, "checksum"),
                                      node->pool));
      ctx->current_node = node->parent;
      svn_pool_destroy(node->pool);
    }
  else if (leaving_state == REPLAY_CLOSE_DIRECTORY)
    {
      struct replay_node_t *node = ctx->current_node;

      if (! node || node->file)
        return svn_error_create(SVN_ERR_XML_MALFORMED, ((void*)0), ((void*)0));

      SVN_ERR(ctx->editor->close_directory(node->baton, node->pool));
      ctx->current_node = node->parent;
      svn_pool_destroy(node->pool);
    }
  else if (leaving_state == REPLAY_DELETE_ENTRY)
    {
      struct replay_node_t *parent_node = ctx->current_node;
      const char *name = svn_hash_gets(attrs, "name");
      const char *revstr = svn_hash_gets(attrs, "rev");
      apr_int64_t rev;

      if (! parent_node || parent_node->file)
        return svn_error_create(SVN_ERR_XML_MALFORMED, ((void*)0), ((void*)0));

      SVN_ERR(svn_cstring_atoi64(&rev, revstr));
      SVN_ERR(ctx->editor->delete_entry(name,
                                        (svn_revnum_t)rev,
                                        parent_node->baton,
                                        scratch_pool));
    }
  else if (leaving_state == REPLAY_CHANGE_FILE_PROP
           || leaving_state == REPLAY_CHANGE_DIRECTORY_PROP)
    {
      struct replay_node_t *node = ctx->current_node;
      const char *name;
      const svn_string_t *value;

      if (! node || node->file != (leaving_state == REPLAY_CHANGE_FILE_PROP))
        return svn_error_create(SVN_ERR_XML_MALFORMED, ((void*)0), ((void*)0));

      name = svn_hash_gets(attrs, "name");

      if (svn_hash_gets(attrs, "del"))
        value = ((void*)0);
      else
        value = svn_base64_decode_string(cdata, scratch_pool);

      if (node->file)
        {
          SVN_ERR(ctx->editor->change_file_prop(node->baton, name, value,
                                                scratch_pool));
        }
      else
        {
          SVN_ERR(ctx->editor->change_dir_prop(node->baton, name, value,
                                               scratch_pool));
        }
    }
  else if (leaving_state == REPLAY_APPLY_TEXTDELTA)
    {
      struct replay_node_t *node = ctx->current_node;

      if (! node || ! node->file)
        return svn_error_create(SVN_ERR_XML_MALFORMED, ((void*)0), ((void*)0));

      if (node->stream)
        SVN_ERR(svn_stream_close(node->stream));

      node->stream = ((void*)0);
    }
  return SVN_NO_ERROR;
}
