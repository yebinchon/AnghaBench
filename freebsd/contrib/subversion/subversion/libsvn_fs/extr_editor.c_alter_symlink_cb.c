
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct edit_baton {int dummy; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_UNUSED (struct edit_baton*) ;
 int SVN__NOT_IMPLEMENTED () ;

__attribute__((used)) static svn_error_t *
alter_symlink_cb(void *baton,
                 const char *relpath,
                 svn_revnum_t revision,
                 const char *target,
                 apr_hash_t *props,
                 apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = baton;

  SVN_UNUSED(eb);
  SVN__NOT_IMPLEMENTED();
}
