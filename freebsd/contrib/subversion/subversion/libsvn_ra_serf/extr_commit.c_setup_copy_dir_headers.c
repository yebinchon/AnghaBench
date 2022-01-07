
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int serf_bucket_t ;
struct TYPE_9__ {int pool; int working_url; int name; TYPE_2__* parent_dir; scalar_t__ url; TYPE_6__* commit_ctx; } ;
typedef TYPE_3__ dir_context_t ;
struct TYPE_10__ {char* path; } ;
typedef TYPE_4__ apr_uri_t ;
typedef int apr_pool_t ;
struct TYPE_11__ {TYPE_1__* session; } ;
struct TYPE_8__ {int working_url; } ;
struct TYPE_7__ {TYPE_4__ session_url; } ;


 scalar_t__ USING_HTTPV2_COMMIT_SUPPORT (TYPE_6__*) ;
 int apr_pstrdup (int ,char*) ;
 char* apr_uri_unparse (int *,TYPE_4__*,int ) ;
 int serf_bucket_headers_set (int *,char*,char const*) ;
 int serf_bucket_headers_setn (int *,char*,char*) ;
 int setup_add_dir_common_headers (int *,void*,int *,int *) ;
 int * svn_error_trace (int ) ;
 scalar_t__ svn_path_url_add_component2 (int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
setup_copy_dir_headers(serf_bucket_t *headers,
                       void *baton,
                       apr_pool_t *pool ,
                       apr_pool_t *scratch_pool)
{
  dir_context_t *dir = baton;
  apr_uri_t uri;
  const char *absolute_uri;


  uri = dir->commit_ctx->session->session_url;

  if (USING_HTTPV2_COMMIT_SUPPORT(dir->commit_ctx))
    {
      uri.path = (char *)dir->url;
    }
  else
    {
      uri.path = (char *)svn_path_url_add_component2(
                                    dir->parent_dir->working_url,
                                    dir->name, pool);
    }
  absolute_uri = apr_uri_unparse(pool, &uri, 0);

  serf_bucket_headers_set(headers, "Destination", absolute_uri);

  serf_bucket_headers_setn(headers, "Depth", "infinity");
  serf_bucket_headers_setn(headers, "Overwrite", "F");


  dir->working_url = apr_pstrdup(dir->pool, uri.path);

  return svn_error_trace(setup_add_dir_common_headers(headers, baton, pool,
                                                      scratch_pool));
}
