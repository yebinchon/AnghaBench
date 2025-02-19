
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct ev2_baton {int inner; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_editor_add_directory (int ,char const*,int const*,int *,int ) ;

__attribute__((used)) static svn_error_t *
add_directory_cb(void *baton,
                 const char *relpath,
                 const apr_array_header_t *children,
                 apr_hash_t *props,
                 svn_revnum_t replaces_rev,
                 apr_pool_t *scratch_pool)
{
  struct ev2_baton *eb = baton;

  SVN_ERR(svn_editor_add_directory(eb->inner, relpath, children, props,
                                   replaces_rev));
  return SVN_NO_ERROR;
}
