
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_string_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_ra_serf__xml_estate_t ;
typedef int svn_error_t ;
typedef int rev ;
struct TYPE_2__ {int pool; int paths; } ;
typedef TYPE_1__ loc_context_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;
typedef int apr_hash_t ;


 int LOCATION ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int apr_hash_set (int ,int ,int,int ) ;
 int apr_pmemdup (int ,scalar_t__*,int) ;
 int apr_pstrdup (int ,char const*) ;
 int svn_cstring_atoi64 (scalar_t__*,char const*) ;
 char* svn_hash_gets (int *,char*) ;

__attribute__((used)) static svn_error_t *
getloc_closed(svn_ra_serf__xml_estate_t *xes,
              void *baton,
              int leaving_state,
              const svn_string_t *cdata,
              apr_hash_t *attrs,
              apr_pool_t *scratch_pool)
{
  loc_context_t *loc_ctx = baton;
  const char *revstr;
  const char *path;

  SVN_ERR_ASSERT(leaving_state == LOCATION);

  revstr = svn_hash_gets(attrs, "rev");
  path = svn_hash_gets(attrs, "path");
  if (revstr != ((void*)0) && path != ((void*)0))
    {
      apr_int64_t rev_val;
      svn_revnum_t rev;

      SVN_ERR(svn_cstring_atoi64(&rev_val, revstr));
      rev = (svn_revnum_t)rev_val;

      apr_hash_set(loc_ctx->paths,
                   apr_pmemdup(loc_ctx->pool, &rev, sizeof(rev)), sizeof(rev),
                   apr_pstrdup(loc_ctx->pool, path));
    }

  return SVN_NO_ERROR;
}
