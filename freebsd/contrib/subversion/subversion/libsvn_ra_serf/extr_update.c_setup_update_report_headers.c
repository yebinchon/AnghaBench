
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int serf_bucket_t ;
struct TYPE_2__ {int sess; } ;
typedef TYPE_1__ report_context_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int svn_ra_serf__setup_svndiff_accept_encoding (int *,int ) ;

__attribute__((used)) static svn_error_t *
setup_update_report_headers(serf_bucket_t *headers,
                            void *baton,
                            apr_pool_t *pool ,
                            apr_pool_t *scratch_pool)
{
  report_context_t *report = baton;

  svn_ra_serf__setup_svndiff_accept_encoding(headers, report->sess);

  return SVN_NO_ERROR;
}
