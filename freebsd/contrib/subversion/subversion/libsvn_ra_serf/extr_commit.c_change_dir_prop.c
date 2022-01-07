
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_6__ {int name; int value; } ;
typedef TYPE_1__ svn_prop_t ;
typedef int svn_error_t ;
struct TYPE_7__ {int prop_changes; int pool; int commit_ctx; } ;
typedef TYPE_2__ dir_context_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int USING_HTTPV2_COMMIT_SUPPORT (int ) ;
 TYPE_1__* apr_palloc (int ,int) ;
 int apr_pstrdup (int ,char const*) ;
 int checkout_dir (TYPE_2__*,int *) ;
 int svn_hash_sets (int ,int ,TYPE_1__*) ;
 int svn_string_dup (int const*,int ) ;

__attribute__((used)) static svn_error_t *
change_dir_prop(void *dir_baton,
                const char *name,
                const svn_string_t *value,
                apr_pool_t *scratch_pool)
{
  dir_context_t *dir = dir_baton;
  svn_prop_t *prop;

  if (! USING_HTTPV2_COMMIT_SUPPORT(dir->commit_ctx))
    {

      SVN_ERR(checkout_dir(dir, scratch_pool));
    }

  prop = apr_palloc(dir->pool, sizeof(*prop));

  prop->name = apr_pstrdup(dir->pool, name);
  prop->value = svn_string_dup(value, dir->pool);

  svn_hash_sets(dir->prop_changes, prop->name, prop);

  return SVN_NO_ERROR;
}
