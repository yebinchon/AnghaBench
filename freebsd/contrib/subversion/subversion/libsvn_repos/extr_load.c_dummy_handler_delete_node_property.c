
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
dummy_handler_delete_node_property(void *node_baton,
                                   const char *name)
{
  return SVN_NO_ERROR;
}
