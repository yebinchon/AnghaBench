
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_5__ {int name; int value; } ;
typedef TYPE_1__ svn_prop_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int prop_changes; int pool; } ;
typedef TYPE_2__ file_context_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 TYPE_1__* apr_palloc (int ,int) ;
 int apr_pstrdup (int ,char const*) ;
 int svn_hash_sets (int ,int ,TYPE_1__*) ;
 int svn_string_dup (int const*,int ) ;

__attribute__((used)) static svn_error_t *
change_file_prop(void *file_baton,
                 const char *name,
                 const svn_string_t *value,
                 apr_pool_t *pool)
{
  file_context_t *file = file_baton;
  svn_prop_t *prop;

  prop = apr_palloc(file->pool, sizeof(*prop));

  prop->name = apr_pstrdup(file->pool, name);
  prop->value = svn_string_dup(value, file->pool);

  svn_hash_sets(file->prop_changes, prop->name, prop);

  return SVN_NO_ERROR;
}
