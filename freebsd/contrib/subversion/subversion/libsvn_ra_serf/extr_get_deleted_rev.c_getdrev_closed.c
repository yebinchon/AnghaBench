
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_ra_serf__xml_estate_t ;
typedef int svn_error_t ;
struct TYPE_5__ {scalar_t__* revision_deleted; } ;
typedef TYPE_2__ drev_context_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int VERSION_NAME ;
 int svn_cstring_atoi64 (scalar_t__*,int ) ;

__attribute__((used)) static svn_error_t *
getdrev_closed(svn_ra_serf__xml_estate_t *xes,
               void *baton,
               int leaving_state,
               const svn_string_t *cdata,
               apr_hash_t *attrs,
               apr_pool_t *scratch_pool)
{
  drev_context_t *drev_ctx = baton;
  apr_int64_t rev;

  SVN_ERR_ASSERT(leaving_state == VERSION_NAME);
  SVN_ERR_ASSERT(cdata != ((void*)0));

  SVN_ERR(svn_cstring_atoi64(&rev, cdata->data));
  *drev_ctx->revision_deleted = (svn_revnum_t)rev;

  return SVN_NO_ERROR;
}
