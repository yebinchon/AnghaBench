
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_ra_file_rev_handler_t ;
typedef int svn_file_rev_handler_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR_ASSERT (int) ;
 int svn_compat_wrap_file_rev_handler (int *,void**,int ,void*,int *) ;
 int * svn_ra_get_file_revs2 (int *,char const*,int ,int ,int ,int ,void*,int *) ;

svn_error_t *svn_ra_get_file_revs(svn_ra_session_t *session,
                                  const char *path,
                                  svn_revnum_t start,
                                  svn_revnum_t end,
                                  svn_ra_file_rev_handler_t handler,
                                  void *handler_baton,
                                  apr_pool_t *pool)
{
  svn_file_rev_handler_t handler2;
  void *handler2_baton;

  SVN_ERR_ASSERT(*path != '/');

  svn_compat_wrap_file_rev_handler(&handler2, &handler2_baton,
                                   handler, handler_baton,
                                   pool);

  return svn_ra_get_file_revs2(session, path, start, end, FALSE, handler2,
                               handler2_baton, pool);
}
