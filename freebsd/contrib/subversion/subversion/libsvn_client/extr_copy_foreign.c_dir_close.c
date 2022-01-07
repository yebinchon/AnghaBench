
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct dir_baton_t {int dummy; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int ensure_added (struct dir_baton_t*,int *) ;
 int maybe_done (struct dir_baton_t*) ;

__attribute__((used)) static svn_error_t *
dir_close(void *dir_baton,
          apr_pool_t *scratch_pool)
{
  struct dir_baton_t *db = dir_baton;


  SVN_ERR(ensure_added(db, scratch_pool));

  SVN_ERR(maybe_done(db));

  return SVN_NO_ERROR;
}
