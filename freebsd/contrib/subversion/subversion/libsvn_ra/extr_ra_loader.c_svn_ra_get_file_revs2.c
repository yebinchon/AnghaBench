
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_16__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_file_rev_handler_t ;
struct TYPE_17__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_15__ {TYPE_3__* (* get_file_revs ) (TYPE_2__*,char const*,scalar_t__,scalar_t__,scalar_t__,int ,void*,int *) ;} ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 scalar_t__ SVN_ERR_RA_NOT_IMPLEMENTED ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int SVN_RA_CAPABILITY_GET_FILE_REVS_REVERSE ;
 TYPE_3__* stub1 (TYPE_2__*,char const*,scalar_t__,scalar_t__,scalar_t__,int ,void*,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 int svn_ra__assert_capable_server (TYPE_2__*,int ,int *,int *) ;
 int svn_ra__assert_mergeinfo_capable_server (TYPE_2__*,int *,int *) ;
 TYPE_3__* svn_ra__file_revs_from_log (TYPE_2__*,char const*,scalar_t__,scalar_t__,int ,void*,int *) ;
 int svn_relpath_is_canonical (char const*) ;

svn_error_t *svn_ra_get_file_revs2(svn_ra_session_t *session,
                                   const char *path,
                                   svn_revnum_t start,
                                   svn_revnum_t end,
                                   svn_boolean_t include_merged_revisions,
                                   svn_file_rev_handler_t handler,
                                   void *handler_baton,
                                   apr_pool_t *pool)
{
  svn_error_t *err;

  SVN_ERR_ASSERT(svn_relpath_is_canonical(path));

  if (include_merged_revisions)
    SVN_ERR(svn_ra__assert_mergeinfo_capable_server(session, ((void*)0), pool));

  if (start > end || !SVN_IS_VALID_REVNUM(start))
    SVN_ERR(
     svn_ra__assert_capable_server(session,
                                   SVN_RA_CAPABILITY_GET_FILE_REVS_REVERSE,
                                   ((void*)0),
                                   pool));

  err = session->vtable->get_file_revs(session, path, start, end,
                                       include_merged_revisions,
                                       handler, handler_baton, pool);
  if (err && (err->apr_err == SVN_ERR_RA_NOT_IMPLEMENTED)
      && !include_merged_revisions)
    {
      svn_error_clear(err);


      err = svn_ra__file_revs_from_log(session, path, start, end,
                                       handler, handler_baton, pool);
    }
  return svn_error_trace(err);
}
