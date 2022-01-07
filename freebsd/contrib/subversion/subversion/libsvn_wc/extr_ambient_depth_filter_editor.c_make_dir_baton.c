
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_wc__db_status_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct edit_baton {int db; int anchor_abspath; } ;
struct dir_baton {scalar_t__ ambient_depth; struct edit_baton* edit_baton; void* ambiently_excluded; int abspath; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int ambient_read_info (scalar_t__*,scalar_t__*,int *,int ,int ,int *) ;
 struct dir_baton* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,int ) ;
 scalar_t__ svn_depth_empty ;
 scalar_t__ svn_depth_files ;
 scalar_t__ svn_depth_unknown ;
 int svn_dirent_join (int ,char const*,int *) ;
 scalar_t__ svn_node_unknown ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_not_present ;

__attribute__((used)) static svn_error_t *
make_dir_baton(struct dir_baton **d_p,
               const char *path,
               struct edit_baton *eb,
               struct dir_baton *pb,
               svn_boolean_t added,
               apr_pool_t *pool)
{
  struct dir_baton *d;

  SVN_ERR_ASSERT(path || (! pb));

  if (pb && pb->ambiently_excluded)
    {


      *d_p = pb;
      return SVN_NO_ERROR;
    }


  d = apr_pcalloc(pool, sizeof(*d));

  if (path)
    d->abspath = svn_dirent_join(eb->anchor_abspath, path, pool);
  else
    d->abspath = apr_pstrdup(pool, eb->anchor_abspath);




  if (pb && pb->ambient_depth != svn_depth_unknown)
    {
      svn_boolean_t exclude;
      svn_wc__db_status_t status;
      svn_node_kind_t kind;
      svn_boolean_t exists = TRUE;

      if (!added)
        {
          SVN_ERR(ambient_read_info(&status, &kind, ((void*)0),
                                    eb->db, d->abspath, pool));
        }
      else
        {
          status = svn_wc__db_status_not_present;
          kind = svn_node_unknown;
        }

      exists = (kind != svn_node_unknown);

      if (pb->ambient_depth == svn_depth_empty
          || pb->ambient_depth == svn_depth_files)
        {





          exclude = !exists;
        }
      else
        {


          exclude = exists && (status == svn_wc__db_status_excluded);
        }
      if (exclude)
        {
          d->ambiently_excluded = TRUE;
          *d_p = d;
          return SVN_NO_ERROR;
        }
    }

  d->edit_baton = eb;


  d->ambient_depth = svn_depth_unknown;

  *d_p = d;
  return SVN_NO_ERROR;
}
