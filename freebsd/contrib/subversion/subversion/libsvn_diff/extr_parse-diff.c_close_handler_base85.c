
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct base85_baton_t {int iterpool; } ;


 int * SVN_NO_ERROR ;
 int svn_pool_destroy (int ) ;

__attribute__((used)) static svn_error_t *
close_handler_base85(void *baton)
{
  struct base85_baton_t *b85b = baton;

  svn_pool_destroy(b85b->iterpool);

  return SVN_NO_ERROR;
}
