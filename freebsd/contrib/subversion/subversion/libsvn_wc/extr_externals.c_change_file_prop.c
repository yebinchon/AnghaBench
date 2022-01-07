
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_3__ {int value; int name; } ;
typedef TYPE_1__ svn_prop_t ;
typedef int svn_error_t ;
struct edit_baton {int pool; int propchanges; } ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 TYPE_1__* apr_array_push (int ) ;
 int apr_pstrdup (int ,char const*) ;
 int svn_string_dup (int const*,int ) ;

__attribute__((used)) static svn_error_t *
change_file_prop(void *file_baton,
                 const char *name,
                 const svn_string_t *value,
                 apr_pool_t *pool)
{
  struct edit_baton *eb = file_baton;
  svn_prop_t *propchange;

  propchange = apr_array_push(eb->propchanges);
  propchange->name = apr_pstrdup(eb->pool, name);
  propchange->value = svn_string_dup(value, eb->pool);

  return SVN_NO_ERROR;
}
