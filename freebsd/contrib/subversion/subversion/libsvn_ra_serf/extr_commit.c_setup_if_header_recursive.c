
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int data; } ;
typedef TYPE_2__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int serf_bucket_t ;
struct TYPE_12__ {TYPE_1__* session; int deleted_entries; int lock_tokens; } ;
typedef TYPE_3__ commit_context_t ;
struct TYPE_13__ {char* path; } ;
typedef TYPE_4__ apr_uri_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;
struct TYPE_10__ {TYPE_4__ session_url; } ;


 int FALSE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 char* apr_hash_this_val (int *) ;
 char* apr_uri_unparse (int *,TYPE_4__*,int ) ;
 int serf_bucket_headers_set (int *,char*,int ) ;
 scalar_t__ svn_hash_gets (int ,char const*) ;
 scalar_t__ svn_path_url_add_component2 (char*,char const*,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_relpath_skip_ancestor (char const*,char const*) ;
 int svn_stringbuf_appendbyte (TYPE_2__*,char) ;
 int svn_stringbuf_appendcstr (TYPE_2__*,char*) ;
 TYPE_2__* svn_stringbuf_create (char*,int *) ;

__attribute__((used)) static svn_error_t *
setup_if_header_recursive(svn_boolean_t *added,
                          serf_bucket_t *headers,
                          commit_context_t *commit_ctx,
                          const char *rq_relpath,
                          apr_pool_t *pool)
{
  svn_stringbuf_t *sb = ((void*)0);
  apr_hash_index_t *hi;
  apr_pool_t *iterpool = ((void*)0);

  if (!commit_ctx->lock_tokens)
    {
      *added = FALSE;
      return SVN_NO_ERROR;
    }
  for (hi = apr_hash_first(pool, commit_ctx->lock_tokens);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *relpath = apr_hash_this_key(hi);
      apr_uri_t uri;

      if (!svn_relpath_skip_ancestor(rq_relpath, relpath))
        continue;
      else if (svn_hash_gets(commit_ctx->deleted_entries, relpath))
        {



          continue;
        }

      if (!iterpool)
        iterpool = svn_pool_create(pool);
      else
        svn_pool_clear(iterpool);

      if (sb == ((void*)0))
        sb = svn_stringbuf_create("", pool);
      else
        svn_stringbuf_appendbyte(sb, ' ');

      uri = commit_ctx->session->session_url;
      uri.path = (char *)svn_path_url_add_component2(uri.path, relpath,
                                                    iterpool);

      svn_stringbuf_appendbyte(sb, '<');
      svn_stringbuf_appendcstr(sb, apr_uri_unparse(iterpool, &uri, 0));
      svn_stringbuf_appendcstr(sb, "> (<");
      svn_stringbuf_appendcstr(sb, apr_hash_this_val(hi));
      svn_stringbuf_appendcstr(sb, ">)");
    }

  if (iterpool)
    svn_pool_destroy(iterpool);

  if (sb)
    {
      serf_bucket_headers_set(headers, "If", sb->data);
      *added = TRUE;
    }
  else
    *added = FALSE;

  return SVN_NO_ERROR;
}
