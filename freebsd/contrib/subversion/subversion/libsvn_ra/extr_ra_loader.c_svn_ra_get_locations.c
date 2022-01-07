
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_12__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_ra_session_t ;
struct TYPE_13__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;
struct TYPE_11__ {TYPE_3__* (* get_locations ) (TYPE_2__*,int **,char const*,int ,int const*,int *) ;} ;


 int SVN_ERR_ASSERT (int ) ;
 scalar_t__ SVN_ERR_RA_NOT_IMPLEMENTED ;
 int SVN_IS_VALID_REVNUM (int ) ;
 TYPE_3__* stub1 (TYPE_2__*,int **,char const*,int ,int const*,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_ra__locations_from_log (TYPE_2__*,int **,char const*,int ,int const*,int *) ;
 int svn_relpath_is_canonical (char const*) ;

svn_error_t *svn_ra_get_locations(svn_ra_session_t *session,
                                  apr_hash_t **locations,
                                  const char *path,
                                  svn_revnum_t peg_revision,
                                  const apr_array_header_t *location_revisions,
                                  apr_pool_t *pool)
{
  svn_error_t *err;

  SVN_ERR_ASSERT(SVN_IS_VALID_REVNUM(peg_revision));
  SVN_ERR_ASSERT(svn_relpath_is_canonical(path));
  err = session->vtable->get_locations(session, locations, path,
                                       peg_revision, location_revisions, pool);
  if (err && (err->apr_err == SVN_ERR_RA_NOT_IMPLEMENTED))
    {
      svn_error_clear(err);


      err = svn_ra__locations_from_log(session, locations, path,
                                       peg_revision, location_revisions,
                                       pool);
    }
  return err;
}
