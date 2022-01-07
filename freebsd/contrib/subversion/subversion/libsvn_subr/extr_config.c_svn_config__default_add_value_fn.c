
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int svn_config_t ;


 int * SVN_NO_ERROR ;
 int svn_config_set (int *,int ,int ,int ) ;

svn_error_t *
svn_config__default_add_value_fn(void *baton,
                                 svn_stringbuf_t *section,
                                 svn_stringbuf_t *option,
                                 svn_stringbuf_t *value)
{

  svn_config_set((svn_config_t *)baton, section->data,
                 option->data, value->data);
  return SVN_NO_ERROR;
}
