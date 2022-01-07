
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_14__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_ra_session_t ;
struct TYPE_15__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;
struct TYPE_13__ {TYPE_3__* (* get_inherited_props ) (TYPE_2__*,int **,char const*,int ,int *,int *) ;} ;


 int SVN_ERR (TYPE_3__*) ;
 int SVN_ERR_ASSERT (int ) ;
 scalar_t__ SVN_ERR_RA_NOT_IMPLEMENTED ;
 TYPE_3__* SVN_NO_ERROR ;
 TYPE_3__* stub1 (TYPE_2__*,int **,char const*,int ,int *,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_ra__get_inherited_props_walk (TYPE_2__*,char const*,int ,int **,int *,int *) ;
 int svn_relpath_is_canonical (char const*) ;

svn_error_t *
svn_ra_get_inherited_props(svn_ra_session_t *session,
                           apr_array_header_t **iprops,
                           const char *path,
                           svn_revnum_t revision,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  svn_error_t *err;

  SVN_ERR_ASSERT(svn_relpath_is_canonical(path));

  err = session->vtable->get_inherited_props(session, iprops, path,
                                             revision, result_pool,
                                             scratch_pool);

  if (err && err->apr_err == SVN_ERR_RA_NOT_IMPLEMENTED)
    {
      svn_error_clear(err);


      SVN_ERR(svn_ra__get_inherited_props_walk(session, path, revision, iprops,
                                               result_pool, scratch_pool));
    }
  else
    SVN_ERR(err);

  return SVN_NO_ERROR;
}
