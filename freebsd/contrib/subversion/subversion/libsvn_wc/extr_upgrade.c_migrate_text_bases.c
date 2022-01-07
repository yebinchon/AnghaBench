
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {void* md5_checksum; void* sha1_checksum; } ;
struct TYPE_8__ {TYPE_2__ normal_base; TYPE_2__ revert_base; } ;
typedef TYPE_1__ svn_wc__text_base_info_t ;
typedef TYPE_2__ svn_wc__text_base_file_info_t ;
typedef int svn_stream_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_sqlite__db_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
struct TYPE_10__ {int size; } ;
typedef TYPE_3__ apr_finfo_t ;


 int APR_FINFO_SIZE ;
 scalar_t__ FALSE ;
 int STMT_INSERT_OR_IGNORE_PRISTINE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__BASE_EXT ;
 int SVN_WC__REVERT_EXT ;
 int TEXT_BASE_SUBDIR ;
 scalar_t__ TRUE ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 char* remove_suffix (char const*,int ,int *) ;
 void* svn_checksum_dup (int *,int *) ;
 int svn_checksum_md5 ;
 int svn_checksum_sha1 ;
 int svn_dirent_dirname (char const*,int *) ;
 char* svn_dirent_join (char const*,char const*,int *) ;
 TYPE_1__* svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,char const*,TYPE_1__*) ;
 int svn_io_file_del_none ;
 int svn_io_file_move (char const*,char const*,int *) ;
 int svn_io_get_dirents3 (int **,char const*,scalar_t__,int *,int *) ;
 int svn_io_stat (TYPE_3__*,char const*,int ,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_sqlite__bind_checksum (int *,int,int *,int *) ;
 int svn_sqlite__bind_int64 (int *,int,int ) ;
 int svn_sqlite__get_statement (int **,int *,int ) ;
 int svn_sqlite__insert (int *,int *) ;
 int * svn_stream_checksummed2 (int *,int **,int *,int ,scalar_t__,int *) ;
 int svn_stream_copy3 (int *,int *,int *,int *,int *) ;
 int svn_stream_open_readonly (int **,char const*,int *,int *) ;
 int svn_stream_open_unique (int **,char const**,char const*,int ,int *,int *) ;
 char* svn_wc__adm_child (char const*,int ,int *) ;
 int svn_wc__db_pristine_get_future_path (char const**,char const*,int *,int *,int *) ;
 int svn_wc__ensure_directory (int ,int *) ;

__attribute__((used)) static svn_error_t *
migrate_text_bases(apr_hash_t **text_bases_info,
                   const char *dir_abspath,
                   const char *new_wcroot_abspath,
                   svn_sqlite__db_t *sdb,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  apr_hash_t *dirents;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  apr_hash_index_t *hi;
  const char *text_base_dir = svn_wc__adm_child(dir_abspath,
                                                TEXT_BASE_SUBDIR,
                                                scratch_pool);

  *text_bases_info = apr_hash_make(result_pool);


  SVN_ERR(svn_io_get_dirents3(&dirents, text_base_dir, TRUE,
                              scratch_pool, scratch_pool));
  for (hi = apr_hash_first(scratch_pool, dirents); hi;
       hi = apr_hash_next(hi))
    {
      const char *text_base_basename = apr_hash_this_key(hi);
      svn_checksum_t *md5_checksum;
      svn_checksum_t *sha1_checksum;

      svn_pool_clear(iterpool);


      {
        const char *pristine_path;
        const char *text_base_path;
        const char *temp_path;
        svn_sqlite__stmt_t *stmt;
        apr_finfo_t finfo;
        svn_stream_t *read_stream;
        svn_stream_t *result_stream;

        text_base_path = svn_dirent_join(text_base_dir, text_base_basename,
                                         iterpool);


        SVN_ERR(svn_stream_open_unique(&result_stream, &temp_path,
                                       new_wcroot_abspath,
                                       svn_io_file_del_none,
                                       iterpool, iterpool));

        SVN_ERR(svn_stream_open_readonly(&read_stream, text_base_path,
                                           iterpool, iterpool));

        read_stream = svn_stream_checksummed2(read_stream, &md5_checksum,
                                              ((void*)0), svn_checksum_md5,
                                              TRUE, iterpool);

        read_stream = svn_stream_checksummed2(read_stream, &sha1_checksum,
                                              ((void*)0), svn_checksum_sha1,
                                              TRUE, iterpool);


        SVN_ERR(svn_stream_copy3(read_stream, result_stream,
                                 ((void*)0), ((void*)0), iterpool));

        SVN_ERR(svn_io_stat(&finfo, text_base_path, APR_FINFO_SIZE, iterpool));


        SVN_ERR(svn_sqlite__get_statement(&stmt, sdb,
                                          STMT_INSERT_OR_IGNORE_PRISTINE));
        SVN_ERR(svn_sqlite__bind_checksum(stmt, 1, sha1_checksum, iterpool));
        SVN_ERR(svn_sqlite__bind_checksum(stmt, 2, md5_checksum, iterpool));
        SVN_ERR(svn_sqlite__bind_int64(stmt, 3, finfo.size));
        SVN_ERR(svn_sqlite__insert(((void*)0), stmt));

        SVN_ERR(svn_wc__db_pristine_get_future_path(&pristine_path,
                                                    new_wcroot_abspath,
                                                    sha1_checksum,
                                                    iterpool, iterpool));


        SVN_ERR(svn_wc__ensure_directory(svn_dirent_dirname(pristine_path,
                                                            iterpool),
                                         iterpool));



        SVN_ERR(svn_io_file_move(temp_path, pristine_path, iterpool));
      }


      {
        const char *versioned_file_name;
        svn_boolean_t is_revert_base;
        svn_wc__text_base_info_t *info;
        svn_wc__text_base_file_info_t *file_info;



        versioned_file_name = remove_suffix(text_base_basename,
                                            SVN_WC__REVERT_EXT, result_pool);
        if (versioned_file_name)
          {
            is_revert_base = TRUE;
          }
        else
          {
            versioned_file_name = remove_suffix(text_base_basename,
                                                SVN_WC__BASE_EXT, result_pool);
            is_revert_base = FALSE;
          }

        if (! versioned_file_name)
          {







            continue;
          }



        info = svn_hash_gets(*text_bases_info, versioned_file_name);
        if (info == ((void*)0))
          info = apr_pcalloc(result_pool, sizeof (*info));
        file_info = (is_revert_base ? &info->revert_base : &info->normal_base);

        file_info->sha1_checksum = svn_checksum_dup(sha1_checksum, result_pool);
        file_info->md5_checksum = svn_checksum_dup(md5_checksum, result_pool);
        svn_hash_sets(*text_bases_info, versioned_file_name, info);
      }
    }

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
