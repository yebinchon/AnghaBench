
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {scalar_t__ summarize_kind; scalar_t__ prop_changed; int path; } ;
typedef TYPE_1__ svn_client_diff_summarize_t ;
struct summarize_baton_t {char* anchor; scalar_t__ ignore_properties; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int kind_to_char (scalar_t__) ;
 int stdout ;
 scalar_t__ svn_client_diff_summarize_kind_normal ;
 int * svn_cmdline_fflush (int ) ;
 int svn_cmdline_printf (int *,char*,int ,char,char const*) ;
 char* svn_dirent_join (char const*,int ,int *) ;
 char* svn_dirent_local_style (char const*,int *) ;
 scalar_t__ svn_path_is_url (char const*) ;
 char* svn_path_url_add_component2 (char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
summarize_regular(const svn_client_diff_summarize_t *summary,
                  void *baton,
                  apr_pool_t *pool)
{
  struct summarize_baton_t *b = baton;
  const char *path = b->anchor;
  char prop_change;

  if (b->ignore_properties &&
      summary->summarize_kind == svn_client_diff_summarize_kind_normal)
    return SVN_NO_ERROR;



  if (svn_path_is_url(path))
    {
      path = svn_path_url_add_component2(path, summary->path, pool);
    }
  else
    {
      path = svn_dirent_join(path, summary->path, pool);



      path = svn_dirent_local_style(path, pool);
    }





  prop_change = summary->prop_changed ? 'M' : ' ';
  if (b->ignore_properties)
    prop_change = ' ';

  SVN_ERR(svn_cmdline_printf(pool, "%c%c      %s\n",
                             kind_to_char(summary->summarize_kind),
                             prop_change, path));

  return svn_cmdline_fflush(stdout);
}
