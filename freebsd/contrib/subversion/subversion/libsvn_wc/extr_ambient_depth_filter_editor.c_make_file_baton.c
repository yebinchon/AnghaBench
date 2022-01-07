
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_wc__db_status_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct file_baton {struct edit_baton* edit_baton; void* ambiently_excluded; } ;
struct edit_baton {int db; int anchor_abspath; } ;
struct dir_baton {scalar_t__ ambient_depth; struct edit_baton* edit_baton; scalar_t__ ambiently_excluded; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (char const*) ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int ambient_read_info (scalar_t__*,scalar_t__*,int *,int ,char const*,int *) ;
 struct file_baton* apr_pcalloc (int *,int) ;
 scalar_t__ svn_depth_empty ;
 scalar_t__ svn_depth_unknown ;
 char* svn_dirent_join (int ,char const*,int *) ;
 scalar_t__ svn_node_unknown ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_not_present ;
 scalar_t__ svn_wc__db_status_server_excluded ;

__attribute__((used)) static svn_error_t *
make_file_baton(struct file_baton **f_p,
                struct dir_baton *pb,
                const char *path,
                svn_boolean_t added,
                apr_pool_t *pool)
{
  struct file_baton *f = apr_pcalloc(pool, sizeof(*f));
  struct edit_baton *eb = pb->edit_baton;
  svn_wc__db_status_t status;
  svn_node_kind_t kind;
  const char *abspath;

  SVN_ERR_ASSERT(path);

  if (pb->ambiently_excluded)
    {
      f->ambiently_excluded = TRUE;
      *f_p = f;
      return SVN_NO_ERROR;
    }

  abspath = svn_dirent_join(eb->anchor_abspath, path, pool);

  if (!added)
    {
      SVN_ERR(ambient_read_info(&status, &kind, ((void*)0),
                                eb->db, abspath, pool));
    }
  else
    {
      status = svn_wc__db_status_not_present;
      kind = svn_node_unknown;
    }

  if (pb->ambient_depth == svn_depth_empty)
    {





      if (status == svn_wc__db_status_not_present
          || status == svn_wc__db_status_server_excluded
          || status == svn_wc__db_status_excluded
          || kind == svn_node_unknown)
        {
          f->ambiently_excluded = TRUE;
          *f_p = f;
          return SVN_NO_ERROR;
        }
    }



  if (pb->ambient_depth != svn_depth_unknown
      && status == svn_wc__db_status_excluded)
    {
      f->ambiently_excluded = TRUE;
      *f_p = f;
      return SVN_NO_ERROR;
    }

  f->edit_baton = pb->edit_baton;

  *f_p = f;
  return SVN_NO_ERROR;
}
