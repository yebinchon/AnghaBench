
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int serf_bucket_t ;
struct TYPE_7__ {TYPE_1__* session; int lock_tokens; int deleted_entries; } ;
typedef TYPE_2__ commit_context_t ;
struct TYPE_8__ {char* path; } ;
typedef TYPE_3__ apr_uri_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {TYPE_3__ session_url; } ;


 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 char* apr_pstrcat (int *,char*,char const*,char*,char const*,char*,int ) ;
 char* apr_uri_unparse (int *,TYPE_3__*,int ) ;
 int serf_bucket_headers_set (int *,char*,char const*) ;
 char* svn_hash_gets (int ,char const*) ;
 scalar_t__ svn_path_url_add_component2 (char*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
maybe_set_lock_token_header(serf_bucket_t *headers,
                            commit_context_t *commit_ctx,
                            const char *relpath,
                            apr_pool_t *pool)
{
  const char *token;

  if (! commit_ctx->lock_tokens)
    return SVN_NO_ERROR;

  if (! svn_hash_gets(commit_ctx->deleted_entries, relpath))
    {
      token = svn_hash_gets(commit_ctx->lock_tokens, relpath);
      if (token)
        {
          const char *token_header;
          const char *token_uri;
          apr_uri_t uri = commit_ctx->session->session_url;




          uri.path = (char *)svn_path_url_add_component2(uri.path, relpath,
                                                         pool);
          token_uri = apr_uri_unparse(pool, &uri, 0);

          token_header = apr_pstrcat(pool, "<", token_uri, "> (<", token, ">)",
                                     SVN_VA_NULL);
          serf_bucket_headers_set(headers, "If", token_header);
        }
    }

  return SVN_NO_ERROR;
}
