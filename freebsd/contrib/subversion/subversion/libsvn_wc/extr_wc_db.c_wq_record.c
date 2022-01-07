
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
struct TYPE_7__ {int mtime; int filesize; } ;
typedef TYPE_2__ svn_io_dirent2_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 TYPE_2__* apr_hash_this_val (int *) ;
 int db_record_fileinfo (TYPE_1__*,char const*,int ,int ,int *) ;
 char* svn_dirent_skip_ancestor (int ,char const*) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
wq_record(svn_wc__db_wcroot_t *wcroot,
          apr_hash_t *record_map,
          apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);

  for (hi = apr_hash_first(scratch_pool, record_map); hi;
       hi = apr_hash_next(hi))
    {
      const char *local_abspath = apr_hash_this_key(hi);
      const svn_io_dirent2_t *dirent = apr_hash_this_val(hi);
      const char *local_relpath = svn_dirent_skip_ancestor(wcroot->abspath,
                                                           local_abspath);

      svn_pool_clear(iterpool);

      if (! local_relpath)
        continue;

      SVN_ERR(db_record_fileinfo(wcroot, local_relpath,
                                 dirent->filesize, dirent->mtime,
                                 iterpool));
    }

  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
