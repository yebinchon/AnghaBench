
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int kind; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int svn_subst_eol_style_t ;
struct TYPE_7__ {char* data; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef scalar_t__ svn_boolean_t ;
struct edit_baton {int notify_baton; int (* notify_func ) (int ,TYPE_1__*,int *) ;int cancel_baton; int cancel_func; int repos_root_url; int native_eol; int ignore_keywords; int root_url; int root_path; } ;
typedef scalar_t__ apr_time_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_ENTRY_COMMITTED_DATE ;
 int SVN_PROP_ENTRY_COMMITTED_REV ;
 int SVN_PROP_ENTRY_LAST_AUTHOR ;
 int SVN_PROP_EOL_STYLE ;
 int SVN_PROP_EXECUTABLE ;
 int SVN_PROP_KEYWORDS ;
 int SVN_PROP_SPECIAL ;
 scalar_t__ TRUE ;
 int get_eol_style (int *,char const**,char*,int ) ;
 int stub1 (int ,TYPE_1__*,int *) ;
 int svn_dirent_dirname (char const*,int *) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 TYPE_2__* svn_hash_gets (int *,int ) ;
 int svn_io_file_del_none ;
 int svn_io_file_rename2 (char const*,char const*,scalar_t__,int *) ;
 int svn_io_set_file_affected_time (scalar_t__,char const*,int *) ;
 int svn_io_set_file_executable (char const*,scalar_t__,scalar_t__,int *) ;
 int svn_node_file ;
 char* svn_path_url_add_component2 (int ,char const*,int *) ;
 int svn_stream_copy3 (int *,int *,int ,int ,int *) ;
 int svn_stream_open_unique (int **,char const**,int ,int ,int *,int *) ;
 int svn_subst_build_keywords3 (int **,char*,char const*,char const*,int ,scalar_t__,char const*,int *) ;
 int svn_subst_create_specialfile (int **,char const*,int *,int *) ;
 int * svn_subst_stream_translated (int *,char const*,scalar_t__,int *,scalar_t__,int *) ;
 int svn_time_from_cstring (scalar_t__*,char*,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_update_add ;

__attribute__((used)) static svn_error_t *
add_file_ev2(void *baton,
             const char *relpath,
             const svn_checksum_t *checksum,
             svn_stream_t *contents,
             apr_hash_t *props,
             svn_revnum_t replaces_rev,
             apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = baton;
  const char *full_path = svn_dirent_join(eb->root_path, relpath,
                                          scratch_pool);


  const char *full_url = svn_path_url_add_component2(eb->root_url,
                                                     relpath,
                                                     scratch_pool);
  const svn_string_t *val;

  const svn_string_t *eol_style_val = ((void*)0);
  const svn_string_t *keywords_val = ((void*)0);
  const svn_string_t *executable_val = ((void*)0);
  svn_boolean_t special = FALSE;

  const char *revision = ((void*)0);
  const char *author = ((void*)0);
  apr_time_t date = 0;


  if ( (val = svn_hash_gets(props, SVN_PROP_EOL_STYLE)) )
    eol_style_val = val;

  if ( !eb->ignore_keywords && (val = svn_hash_gets(props, SVN_PROP_KEYWORDS)) )
    keywords_val = val;

  if ( (val = svn_hash_gets(props, SVN_PROP_EXECUTABLE)) )
    executable_val = val;


  if ( (val = svn_hash_gets(props, SVN_PROP_ENTRY_COMMITTED_REV)) )
    revision = val->data;

  if ( (val = svn_hash_gets(props, SVN_PROP_ENTRY_COMMITTED_DATE)) )
    SVN_ERR(svn_time_from_cstring(&date, val->data, scratch_pool));

  if ( (val = svn_hash_gets(props, SVN_PROP_ENTRY_LAST_AUTHOR)) )
    author = val->data;

  if ( (val = svn_hash_gets(props, SVN_PROP_SPECIAL)) )
    special = TRUE;

  if (special)
    {
      svn_stream_t *tmp_stream;

      SVN_ERR(svn_subst_create_specialfile(&tmp_stream, full_path,
                                           scratch_pool, scratch_pool));
      SVN_ERR(svn_stream_copy3(contents, tmp_stream, eb->cancel_func,
                               eb->cancel_baton, scratch_pool));
    }
  else
    {
      svn_stream_t *tmp_stream;
      const char *tmppath;



      SVN_ERR(svn_stream_open_unique(&tmp_stream, &tmppath,
                                     svn_dirent_dirname(full_path,
                                                        scratch_pool),
                                     svn_io_file_del_none,
                                     scratch_pool, scratch_pool));



      if (eol_style_val || keywords_val)
        {
          svn_subst_eol_style_t style;
          const char *eol = ((void*)0);
          svn_boolean_t repair = FALSE;
          apr_hash_t *final_kw = ((void*)0);

          if (eol_style_val)
            {
              SVN_ERR(get_eol_style(&style, &eol, eol_style_val->data,
                                    eb->native_eol));
              repair = TRUE;
            }

          if (keywords_val)
            SVN_ERR(svn_subst_build_keywords3(&final_kw, keywords_val->data,
                                              revision, full_url,
                                              eb->repos_root_url,
                                              date, author, scratch_pool));



          tmp_stream = svn_subst_stream_translated(tmp_stream, eol, repair,
                                                   final_kw, TRUE,
                                                   scratch_pool);
        }

      SVN_ERR(svn_stream_copy3(contents, tmp_stream, eb->cancel_func,
                               eb->cancel_baton, scratch_pool));


      SVN_ERR(svn_io_file_rename2(tmppath, full_path, FALSE, scratch_pool));
    }

  if (executable_val)
    SVN_ERR(svn_io_set_file_executable(full_path, TRUE, FALSE, scratch_pool));

  if (date && (! special))
    SVN_ERR(svn_io_set_file_affected_time(date, full_path, scratch_pool));

  if (eb->notify_func)
    {
      svn_wc_notify_t *notify = svn_wc_create_notify(full_path,
                                                     svn_wc_notify_update_add,
                                                     scratch_pool);
      notify->kind = svn_node_file;
      (*eb->notify_func)(eb->notify_baton, notify, scratch_pool);
    }

  return SVN_NO_ERROR;
}
