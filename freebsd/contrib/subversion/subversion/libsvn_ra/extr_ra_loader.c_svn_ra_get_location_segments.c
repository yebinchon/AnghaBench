
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
typedef int svn_location_segment_receiver_t ;
struct TYPE_13__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_11__ {TYPE_3__* (* get_location_segments ) (TYPE_2__*,char const*,int ,int ,int ,int ,void*,int *) ;} ;


 int SVN_ERR_ASSERT (int ) ;
 scalar_t__ SVN_ERR_RA_NOT_IMPLEMENTED ;
 TYPE_3__* stub1 (TYPE_2__*,char const*,int ,int ,int ,int ,void*,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_ra__location_segments_from_log (TYPE_2__*,char const*,int ,int ,int ,int ,void*,int *) ;
 int svn_relpath_is_canonical (char const*) ;

svn_error_t *
svn_ra_get_location_segments(svn_ra_session_t *session,
                             const char *path,
                             svn_revnum_t peg_revision,
                             svn_revnum_t start_rev,
                             svn_revnum_t end_rev,
                             svn_location_segment_receiver_t receiver,
                             void *receiver_baton,
                             apr_pool_t *pool)
{
  svn_error_t *err;

  SVN_ERR_ASSERT(svn_relpath_is_canonical(path));
  err = session->vtable->get_location_segments(session, path, peg_revision,
                                               start_rev, end_rev,
                                               receiver, receiver_baton, pool);
  if (err && (err->apr_err == SVN_ERR_RA_NOT_IMPLEMENTED))
    {
      svn_error_clear(err);


      err = svn_ra__location_segments_from_log(session, path,
                                               peg_revision, start_rev,
                                               end_rev, receiver,
                                               receiver_baton, pool);
    }
  return err;
}
