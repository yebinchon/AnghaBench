
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_wc_adm_access_t ;
typedef int svn_subst_eol_style_t ;
struct TYPE_4__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_EOL_STYLE ;
 int SVN_PROP_KEYWORDS ;
 int SVN_PROP_SPECIAL ;
 scalar_t__ apr_hash_count (int *) ;
 int svn_error_clear (int ) ;
 TYPE_1__* svn_hash_gets (int *,int ) ;
 int svn_io_remove_file (char const*,int *) ;
 int svn_stream_open_readonly (int **,char const*,int *,int *) ;
 int svn_subst_build_keywords2 (int **,int ,char*,char*,int ,char*,int *) ;
 int svn_subst_eol_style_from_value (int *,char const**,TYPE_1__*) ;
 int svn_subst_stream_detranslated (int **,char const*,int ,char const*,int ,int *,int ,int *) ;
 scalar_t__ svn_subst_translation_required (int ,char const*,int *,int ,int ) ;
 int svn_wc_add_repos_file3 (char const*,int *,int *,int *,int *,int *,char const*,int ,int *,int *,int *,int *,int *) ;

svn_error_t *
svn_wc_add_repos_file2(const char *dst_path,
                       svn_wc_adm_access_t *adm_access,
                       const char *new_text_base_path,
                       const char *new_text_path,
                       apr_hash_t *new_base_props,
                       apr_hash_t *new_props,
                       const char *copyfrom_url,
                       svn_revnum_t copyfrom_rev,
                       apr_pool_t *pool)
{
  svn_stream_t *new_base_contents;
  svn_stream_t *new_contents = ((void*)0);

  SVN_ERR(svn_stream_open_readonly(&new_base_contents, new_text_base_path,
                                   pool, pool));

  if (new_text_path)
    {







      if (svn_hash_gets(new_props, SVN_PROP_SPECIAL) != ((void*)0))
        {
          SVN_ERR(svn_stream_open_readonly(&new_contents, new_text_path,
                                           pool, pool));
        }
      else
        {

          svn_subst_eol_style_t eol_style;
          const char *eol_str;
          apr_hash_t *keywords = ((void*)0);
          svn_string_t *list;

          list = svn_hash_gets(new_props, SVN_PROP_KEYWORDS);
          if (list != ((void*)0))
            {


              SVN_ERR(svn_subst_build_keywords2(&keywords,
                                                list->data,
                                                "", "", 0, "",
                                                pool));
              if (apr_hash_count(keywords) == 0)
                keywords = ((void*)0);
            }

          svn_subst_eol_style_from_value(&eol_style, &eol_str,
                                         svn_hash_gets(new_props,
                                                       SVN_PROP_EOL_STYLE));

          if (svn_subst_translation_required(eol_style, eol_str, keywords,
                                             FALSE, FALSE))
            {
              SVN_ERR(svn_subst_stream_detranslated(&new_contents,
                                                    new_text_path,
                                                    eol_style, eol_str,
                                                    FALSE,
                                                    keywords,
                                                    FALSE,
                                                    pool));
            }
          else
            {
              SVN_ERR(svn_stream_open_readonly(&new_contents, new_text_path,
                                               pool, pool));
            }
        }
    }

  SVN_ERR(svn_wc_add_repos_file3(dst_path, adm_access,
                                 new_base_contents, new_contents,
                                 new_base_props, new_props,
                                 copyfrom_url, copyfrom_rev,
                                 ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                 pool));




  svn_error_clear(svn_io_remove_file(new_text_base_path, pool));
  if (new_text_path)
    svn_error_clear(svn_io_remove_file(new_text_path, pool));

  return SVN_NO_ERROR;
}
