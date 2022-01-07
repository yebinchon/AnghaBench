
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_config__open_section_fn ;
struct TYPE_4__ {int add_value; int close_section; int open_section; } ;
typedef TYPE_1__ svn_config__constructor_t ;
typedef int svn_config__close_section_fn ;
typedef int svn_config__add_value_fn ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;

svn_config__constructor_t *
svn_config__constructor_create(
    svn_config__open_section_fn open_section_callback,
    svn_config__close_section_fn close_section_callback,
    svn_config__add_value_fn add_value_callback,
    apr_pool_t *result_pool)
{
  svn_config__constructor_t *ctor = apr_palloc(result_pool, sizeof(*ctor));
  ctor->open_section = open_section_callback;
  ctor->close_section = close_section_callback;
  ctor->add_value = add_value_callback;
  return ctor;
}
