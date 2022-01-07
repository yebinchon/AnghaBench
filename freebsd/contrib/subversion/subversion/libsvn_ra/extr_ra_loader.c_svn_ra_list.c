
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_7__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_ra_dirent_receiver_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;
struct TYPE_6__ {int * (* list ) (TYPE_2__*,char const*,int ,int const*,int ,int ,int ,void*,int *) ;} ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int SVN_RA_CAPABILITY_LIST ;
 int * stub1 (TYPE_2__*,char const*,int ,int const*,int ,int ,int ,void*,int *) ;
 int * svn_error_create (int ,int *,int *) ;
 int svn_ra__assert_capable_server (TYPE_2__*,int ,int *,int *) ;
 int svn_relpath_is_canonical (char const*) ;

svn_error_t *
svn_ra_list(svn_ra_session_t *session,
            const char *path,
            svn_revnum_t revision,
            const apr_array_header_t *patterns,
            svn_depth_t depth,
            apr_uint32_t dirent_fields,
            svn_ra_dirent_receiver_t receiver,
            void *receiver_baton,
            apr_pool_t *scratch_pool)
{
  SVN_ERR_ASSERT(svn_relpath_is_canonical(path));
  if (!session->vtable->list)
    return svn_error_create(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0), ((void*)0));

  SVN_ERR(svn_ra__assert_capable_server(session, SVN_RA_CAPABILITY_LIST,
                                        ((void*)0), scratch_pool));

  return session->vtable->list(session, path, revision, patterns, depth,
                               dirent_fields, receiver, receiver_baton,
                               scratch_pool);
}
