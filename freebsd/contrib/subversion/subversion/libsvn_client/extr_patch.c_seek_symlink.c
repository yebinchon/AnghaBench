
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct symlink_baton_t {int at_eof; } ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
seek_symlink(void *baton, apr_off_t offset, apr_pool_t *scratch_pool)
{
  struct symlink_baton_t *sb = baton;

  sb->at_eof = (offset != 0);
  return SVN_NO_ERROR;
}
