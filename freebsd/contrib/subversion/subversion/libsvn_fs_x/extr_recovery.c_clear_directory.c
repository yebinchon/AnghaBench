
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_dirent_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 char* svn_dirent_join (char const*,char const*,int *) ;
 int svn_io_get_dirents3 (int **,char const*,int ,int *,int *) ;
 int svn_io_remove_dir2 (char const*,int ,int *,int *,int *) ;
 int svn_io_remove_file2 (char const*,int ,int *) ;
 scalar_t__ svn_node_dir ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
clear_directory(const char *dir_path,
                apr_pool_t *scratch_pool)
{
  apr_hash_t *dirents;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);

  SVN_ERR(svn_io_get_dirents3(&dirents, dir_path, TRUE, scratch_pool,
                              scratch_pool));

  for (hi = apr_hash_first(scratch_pool, dirents);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *path;
      const char *name;
      svn_dirent_t *dirent;

      svn_pool_clear(iterpool);
      apr_hash_this(hi, (const void **)&name, ((void*)0), (void **)&dirent);

      path = svn_dirent_join(dir_path, name, iterpool);
      if (dirent->kind == svn_node_dir)
        SVN_ERR(svn_io_remove_dir2(path, TRUE, ((void*)0), ((void*)0), iterpool));
      else
        SVN_ERR(svn_io_remove_file2(path, TRUE, iterpool));
    }

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
