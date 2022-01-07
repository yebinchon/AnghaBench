
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int serf_bucket_t ;
struct TYPE_8__ {scalar_t__ url; TYPE_2__* commit_ctx; } ;
typedef TYPE_3__ file_context_t ;
struct TYPE_9__ {char* path; } ;
typedef TYPE_4__ apr_uri_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {TYPE_1__* session; } ;
struct TYPE_6__ {TYPE_4__ session_url; } ;


 int * SVN_NO_ERROR ;
 char* apr_uri_unparse (int *,TYPE_4__*,int ) ;
 int serf_bucket_headers_set (int *,char*,char const*) ;
 int serf_bucket_headers_setn (int *,char*,char*) ;

__attribute__((used)) static svn_error_t *
setup_copy_file_headers(serf_bucket_t *headers,
                        void *baton,
                        apr_pool_t *pool ,
                        apr_pool_t *scratch_pool)
{
  file_context_t *file = baton;
  apr_uri_t uri;
  const char *absolute_uri;


  uri = file->commit_ctx->session->session_url;
  uri.path = (char*)file->url;
  absolute_uri = apr_uri_unparse(pool, &uri, 0);

  serf_bucket_headers_set(headers, "Destination", absolute_uri);

  serf_bucket_headers_setn(headers, "Overwrite", "F");

  return SVN_NO_ERROR;
}
