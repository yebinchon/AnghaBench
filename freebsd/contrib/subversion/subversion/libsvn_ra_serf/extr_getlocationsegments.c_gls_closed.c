
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_string_t ;
typedef void* svn_revnum_t ;
typedef int svn_ra_serf__xml_estate_t ;
struct TYPE_4__ {char const* path; void* range_end; void* range_start; } ;
typedef TYPE_1__ svn_location_segment_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int receiver_baton; int (* receiver ) (TYPE_1__*,int ,int *) ;} ;
typedef TYPE_2__ gls_context_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;
typedef int apr_hash_t ;


 int SEGMENT ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_1__*,int ,int *) ;
 int svn_cstring_atoi64 (scalar_t__*,char const*) ;
 char* svn_hash_gets (int *,char*) ;

__attribute__((used)) static svn_error_t *
gls_closed(svn_ra_serf__xml_estate_t *xes,
           void *baton,
           int leaving_state,
           const svn_string_t *cdata,
           apr_hash_t *attrs,
           apr_pool_t *scratch_pool)
{
  gls_context_t *gls_ctx = baton;
  const char *path;
  const char *start_str;
  const char *end_str;
  apr_int64_t start_val;
  apr_int64_t end_val;
  svn_location_segment_t segment;

  SVN_ERR_ASSERT(leaving_state == SEGMENT);

  path = svn_hash_gets(attrs, "path");
  start_str = svn_hash_gets(attrs, "range-start");
  end_str = svn_hash_gets(attrs, "range-end");


  SVN_ERR_ASSERT(start_str && end_str);

  SVN_ERR(svn_cstring_atoi64(&start_val, start_str));
  SVN_ERR(svn_cstring_atoi64(&end_val, end_str));

  segment.path = path;
  segment.range_start = (svn_revnum_t)start_val;
  segment.range_end = (svn_revnum_t)end_val;
  SVN_ERR(gls_ctx->receiver(&segment, gls_ctx->receiver_baton, scratch_pool));

  return SVN_NO_ERROR;
}
