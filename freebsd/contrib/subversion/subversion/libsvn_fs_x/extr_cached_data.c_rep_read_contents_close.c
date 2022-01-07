
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int filehandle_pool; int scratch_pool; } ;
typedef TYPE_1__ rep_read_baton_t ;


 int * SVN_NO_ERROR ;
 int svn_pool_destroy (int ) ;

__attribute__((used)) static svn_error_t *
rep_read_contents_close(void *baton)
{
  rep_read_baton_t *rb = baton;

  svn_pool_destroy(rb->scratch_pool);
  svn_pool_destroy(rb->filehandle_pool);

  return SVN_NO_ERROR;
}
