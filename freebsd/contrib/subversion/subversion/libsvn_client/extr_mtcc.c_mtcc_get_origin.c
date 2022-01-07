
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int base_revision; int root_op; } ;
typedef TYPE_1__ svn_client__mtcc_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_FOUND ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* apr_pstrdup (int *,char const*) ;
 int get_origin (int *,char const**,int *,int ,char const*,int *,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;

__attribute__((used)) static svn_error_t *
mtcc_get_origin(const char **origin_relpath,
                svn_revnum_t *rev,
                const char *relpath,
                svn_boolean_t ignore_enoent,
                svn_client__mtcc_t *mtcc,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  svn_boolean_t done = FALSE;

  *origin_relpath = ((void*)0);
  *rev = SVN_INVALID_REVNUM;

  SVN_ERR(get_origin(&done, origin_relpath, rev, mtcc->root_op, relpath,
                     result_pool, scratch_pool));

  if (!*origin_relpath && !done)
    {
      *origin_relpath = apr_pstrdup(result_pool, relpath);
      *rev = mtcc->base_revision;
    }
  else if (!ignore_enoent)
    {
      return svn_error_createf(SVN_ERR_FS_NOT_FOUND, ((void*)0),
                               _("No origin found for node at '%s'"),
                               relpath);
    }

  return SVN_NO_ERROR;
}
