
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ svn_subst_eol_style_t ;
struct TYPE_7__ {TYPE_1__* value; } ;
typedef TYPE_2__ svn_prop_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
struct TYPE_8__ {int wri_abspath; int db; int prop_diff; int old_actual_props; int local_abspath; } ;
typedef TYPE_3__ merge_target_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_6__ {char const* data; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_IO_UNKNOWN_EOL ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_EOL_STYLE ;
 int SVN_PROP_MIME_TYPE ;
 char* SVN_SUBST_NATIVE_EOL_STR ;
 int TRUE ;
 char* apr_pstrdup (int *,char const*) ;
 TYPE_2__* get_prop (int ,int ) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int * svn_error_create (int ,int *,int *) ;
 int svn_io_file_del_none ;
 int svn_io_file_del_on_pool_cleanup ;
 int svn_io_open_unique_file3 (int *,char const**,char const*,int ,int *,int *) ;
 scalar_t__ svn_mime_type_is_binary (char const*) ;
 char* svn_prop_get_value (int ,int ) ;
 int svn_subst_copy_and_translate4 (char const*,char const*,char const*,int ,int *,int,int,int ,void*,int *) ;
 scalar_t__ svn_subst_eol_style_fixed ;
 int svn_subst_eol_style_from_value (scalar_t__*,char const**,char const*) ;
 scalar_t__ svn_subst_eol_style_native ;
 scalar_t__ svn_subst_eol_style_none ;
 int svn_wc__db_temp_wcroot_tempdir (char const**,int ,int ,int *,int *) ;
 int svn_wc__get_translate_info (scalar_t__*,char const**,int **,int*,int ,int ,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
detranslate_wc_file(const char **detranslated_abspath,
                    const merge_target_t *mt,
                    svn_boolean_t force_copy,
                    const char *source_abspath,
                    svn_cancel_func_t cancel_func,
                    void *cancel_baton,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  svn_boolean_t old_is_binary, new_is_binary;
  svn_subst_eol_style_t style;
  const char *eol;
  apr_hash_t *keywords;
  svn_boolean_t special;

  {
    const char *old_mime_value
      = svn_prop_get_value(mt->old_actual_props, SVN_PROP_MIME_TYPE);
    const svn_prop_t *prop = get_prop(mt->prop_diff, SVN_PROP_MIME_TYPE);
    const char *new_mime_value
      = prop ? (prop->value ? prop->value->data : ((void*)0)) : old_mime_value;

    old_is_binary = old_mime_value && svn_mime_type_is_binary(old_mime_value);
    new_is_binary = new_mime_value && svn_mime_type_is_binary(new_mime_value);
  }


  if (old_is_binary && new_is_binary)
    {

      SVN_ERR(svn_wc__get_translate_info(((void*)0), ((void*)0), &keywords, ((void*)0),
                                         mt->db, mt->local_abspath,
                                         mt->old_actual_props, TRUE,
                                         scratch_pool, scratch_pool));

      special = FALSE;
      eol = ((void*)0);
      style = svn_subst_eol_style_none;
    }
  else if (!old_is_binary && new_is_binary)
    {


      SVN_ERR(svn_wc__get_translate_info(&style, &eol,
                                         &keywords,
                                         &special,
                                         mt->db, mt->local_abspath,
                                         mt->old_actual_props, TRUE,
                                         scratch_pool, scratch_pool));
    }
  else
    {



      SVN_ERR(svn_wc__get_translate_info(&style, &eol,
                                         &keywords,
                                         &special,
                                         mt->db, mt->local_abspath,
                                         mt->old_actual_props, TRUE,
                                         scratch_pool, scratch_pool));

      if (special)
        {
          keywords = ((void*)0);
          eol = ((void*)0);
          style = svn_subst_eol_style_none;
        }
      else
        {
          const svn_prop_t *prop;


          if ((prop = get_prop(mt->prop_diff, SVN_PROP_EOL_STYLE)) && prop->value)
            {

              svn_subst_eol_style_from_value(&style, &eol, prop->value->data);
            }
          else if (!old_is_binary)
            {

            }
          else
            {
              eol = ((void*)0);
              style = svn_subst_eol_style_none;
            }
        }
    }



  if (force_copy || keywords || eol || special)
    {
      const char *temp_dir_abspath;
      const char *detranslated;



      SVN_ERR(svn_wc__db_temp_wcroot_tempdir(&temp_dir_abspath, mt->db,
                                             mt->wri_abspath,
                                             scratch_pool, scratch_pool));



      SVN_ERR(svn_io_open_unique_file3(((void*)0), &detranslated, temp_dir_abspath,
                                       (force_copy
                                        ? svn_io_file_del_none
                                        : svn_io_file_del_on_pool_cleanup),
                                       result_pool, scratch_pool));





      if (style == svn_subst_eol_style_native)
        eol = SVN_SUBST_NATIVE_EOL_STR;
      else if (style != svn_subst_eol_style_fixed
               && style != svn_subst_eol_style_none)
        return svn_error_create(SVN_ERR_IO_UNKNOWN_EOL, ((void*)0), ((void*)0));

      SVN_ERR(svn_subst_copy_and_translate4(source_abspath,
                                            detranslated,
                                            eol,
                                            TRUE ,
                                            keywords,
                                            FALSE ,
                                            special,
                                            cancel_func, cancel_baton,
                                            scratch_pool));

      SVN_ERR(svn_dirent_get_absolute(detranslated_abspath, detranslated,
                                      result_pool));
    }
  else
    *detranslated_abspath = apr_pstrdup(result_pool, source_abspath);

  return SVN_NO_ERROR;
}
