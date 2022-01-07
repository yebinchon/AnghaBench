
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* value; } ;
typedef TYPE_2__ svn_prop_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;
struct TYPE_4__ {int data; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_EOL_STYLE ;
 int TRUE ;
 char* apr_pstrdup (int *,char const*) ;
 TYPE_2__* get_prop (int const*,int ) ;
 int svn_io_file_del_on_pool_cleanup ;
 int svn_io_open_unique_file3 (int *,char const**,int *,int ,int *,int *) ;
 int svn_subst_copy_and_translate4 (char const*,char const*,char const*,int ,int *,int ,int ,int ,void*,int *) ;
 int svn_subst_eol_style_from_value (int *,char const**,int ) ;

__attribute__((used)) static svn_error_t *
maybe_update_target_eols(const char **new_target_abspath,
                         const apr_array_header_t *prop_diff,
                         const char *old_target_abspath,
                         svn_cancel_func_t cancel_func,
                         void *cancel_baton,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  const svn_prop_t *prop = get_prop(prop_diff, SVN_PROP_EOL_STYLE);

  if (prop && prop->value)
    {
      const char *eol;
      const char *tmp_new;

      svn_subst_eol_style_from_value(((void*)0), &eol, prop->value->data);
      SVN_ERR(svn_io_open_unique_file3(((void*)0), &tmp_new, ((void*)0),
                                       svn_io_file_del_on_pool_cleanup,
                                       result_pool, scratch_pool));




      SVN_ERR(svn_subst_copy_and_translate4(old_target_abspath,
                                            tmp_new,
                                            eol,
                                            TRUE ,
                                            ((void*)0) ,
                                            FALSE ,
                                            FALSE ,
                                            cancel_func, cancel_baton,
                                            scratch_pool));
      *new_target_abspath = apr_pstrdup(result_pool, tmp_new);
    }
  else
    *new_target_abspath = apr_pstrdup(result_pool, old_target_abspath);

  return SVN_NO_ERROR;
}
