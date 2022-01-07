
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int offset; } ;
typedef TYPE_1__ prop_read_baton_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
seek_prop(void *baton, apr_off_t offset, apr_pool_t *scratch_pool)
{
  prop_read_baton_t *b = baton;

  b->offset = offset;
  return SVN_NO_ERROR;
}
