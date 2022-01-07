
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_5__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_dirent_t ;
typedef int svn_diff_source_t ;
typedef scalar_t__ svn_boolean_t ;
struct edit_baton {TYPE_2__* processor; int revision; int ra_session; int cancel_baton; int * (* cancel_func ) (int ) ;} ;
struct dir_baton {int pdb; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
struct TYPE_6__ {int * (* dir_deleted ) (char const*,int *,int *,int ,TYPE_2__*,int *) ;int * (* dir_opened ) (int *,scalar_t__*,scalar_t__*,char const*,int *,int *,int *,int ,TYPE_2__*,int *,int *) ;} ;


 scalar_t__ FALSE ;
 int SVN_DIRENT_KIND ;
 int SVN_ERR (int *) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_INVALID_REVNUM ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 TYPE_1__* apr_hash_this_val (int *) ;
 int * diff_deleted_file (char const*,struct dir_baton*,int *) ;
 struct dir_baton* make_dir_baton (char const*,struct dir_baton*,struct edit_baton*,scalar_t__,int ,int *) ;
 int * release_dir (struct dir_baton*) ;
 int * stub1 (int ) ;
 int * stub2 (int *,scalar_t__*,scalar_t__*,char const*,int *,int *,int *,int ,TYPE_2__*,int *,int *) ;
 int * stub3 (char const*,int *,int *,int ,TYPE_2__*,int *) ;
 int * svn_diff__source_create (int ,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_ra_get_dir2 (int ,int **,int *,int **,char const*,int ,int ,int *) ;
 char* svn_relpath_join (char const*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
diff_deleted_dir(const char *path,
                 struct dir_baton *pb,
                 apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = pb->edit_baton;
  struct dir_baton *db;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  svn_boolean_t skip = FALSE;
  svn_boolean_t skip_children = FALSE;
  apr_hash_t *dirents = ((void*)0);
  apr_hash_t *left_props = ((void*)0);
  svn_diff_source_t *left_source = svn_diff__source_create(eb->revision,
                                                           scratch_pool);
  db = make_dir_baton(path, pb, pb->edit_baton, FALSE, SVN_INVALID_REVNUM,
                      scratch_pool);

  SVN_ERR_ASSERT(SVN_IS_VALID_REVNUM(eb->revision));

  if (eb->cancel_func)
    SVN_ERR(eb->cancel_func(eb->cancel_baton));

  SVN_ERR(eb->processor->dir_opened(&db->pdb, &skip, &skip_children,
                                    path,
                                    left_source,
                                    ((void*)0) ,
                                    ((void*)0) ,
                                    pb->pdb,
                                    eb->processor,
                                    scratch_pool, iterpool));

  if (!skip || !skip_children)
    SVN_ERR(svn_ra_get_dir2(eb->ra_session,
                            skip_children ? ((void*)0) : &dirents,
                            ((void*)0),
                            skip ? ((void*)0) : &left_props,
                            path,
                            eb->revision,
                            SVN_DIRENT_KIND,
                            scratch_pool));





  if (! skip_children)
    {
      apr_hash_index_t *hi;

      for (hi = apr_hash_first(scratch_pool, dirents); hi;
           hi = apr_hash_next(hi))
        {
          const char *child_path;
          const char *name = apr_hash_this_key(hi);
          svn_dirent_t *dirent = apr_hash_this_val(hi);

          svn_pool_clear(iterpool);

          child_path = svn_relpath_join(path, name, iterpool);

          if (dirent->kind == svn_node_file)
            {
              SVN_ERR(diff_deleted_file(child_path, db, iterpool));
            }
          else if (dirent->kind == svn_node_dir)
            {
              SVN_ERR(diff_deleted_dir(child_path, db, iterpool));
            }
        }
    }

  if (! skip)
    {
      SVN_ERR(eb->processor->dir_deleted(path,
                                         left_source,
                                         left_props,
                                         db->pdb,
                                         eb->processor,
                                         scratch_pool));
    }

  SVN_ERR(release_dir(db));

  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
