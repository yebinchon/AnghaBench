
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_3__ {int value; int name; } ;
typedef TYPE_1__ svn_prop_t ;
typedef scalar_t__ svn_prop_kind_t ;
typedef int svn_error_t ;
struct file_baton {int pool; int propchanges; int has_propchange; scalar_t__ skip; } ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int TRUE ;
 TYPE_1__* apr_array_push (int ) ;
 int apr_pstrdup (int ,char const*) ;
 scalar_t__ svn_prop_regular_kind ;
 scalar_t__ svn_prop_wc_kind ;
 scalar_t__ svn_property_kind2 (char const*) ;
 int svn_string_dup (int const*,int ) ;

__attribute__((used)) static svn_error_t *
change_file_prop(void *file_baton,
                 const char *name,
                 const svn_string_t *value,
                 apr_pool_t *pool)
{
  struct file_baton *fb = file_baton;
  svn_prop_t *propchange;
  svn_prop_kind_t propkind;


  if (fb->skip)
    return SVN_NO_ERROR;

  propkind = svn_property_kind2(name);
  if (propkind == svn_prop_wc_kind)
    return SVN_NO_ERROR;
  else if (propkind == svn_prop_regular_kind)
    fb->has_propchange = TRUE;

  propchange = apr_array_push(fb->propchanges);
  propchange->name = apr_pstrdup(fb->pool, name);
  propchange->value = svn_string_dup(value, fb->pool);

  return SVN_NO_ERROR;
}
