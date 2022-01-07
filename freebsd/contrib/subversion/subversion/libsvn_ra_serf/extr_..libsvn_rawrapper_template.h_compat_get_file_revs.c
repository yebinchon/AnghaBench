
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_file_rev_handler_t ;
typedef int svn_file_rev_handler_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* get_file_revs ) (void*,char const*,int ,int ,int ,int ,void*,int *) ;} ;


 int FALSE ;
 TYPE_1__ VTBL ;
 int * stub1 (void*,char const*,int ,int ,int ,int ,void*,int *) ;
 int svn_compat_wrap_file_rev_handler (int *,void**,int ,void*,int *) ;

__attribute__((used)) static svn_error_t *compat_get_file_revs(void *session_baton,
                                         const char *path,
                                         svn_revnum_t start,
                                         svn_revnum_t end,
                                         svn_ra_file_rev_handler_t handler,
                                         void *handler_baton,
                                         apr_pool_t *pool)
{
  svn_file_rev_handler_t handler2;
  void *handler2_baton;

  svn_compat_wrap_file_rev_handler(&handler2, &handler2_baton,
                                   handler, handler_baton,
                                   pool);

  return VTBL.get_file_revs(session_baton, path, start, end,
                            FALSE,
                            handler2, handler2_baton, pool);
}
