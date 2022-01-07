
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_wc__db_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
struct TYPE_8__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_checksum_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_WC_CORRUPT ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ svn_checksum_md5 ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int * svn_stream_checksummed2 (int *,TYPE_1__**,int *,scalar_t__,int ,int *) ;
 int * svn_stream_empty (int *) ;
 int svn_wc__db_pristine_get_md5 (TYPE_1__ const**,int *,char const*,TYPE_1__ const*,int *,int *) ;
 int svn_wc__db_read_info (int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,TYPE_1__ const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc__get_pristine_contents (int **,int *,int *,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
read_and_checksum_pristine_text(svn_stream_t **stream,
                                const svn_checksum_t **expected_md5_checksum,
                                svn_checksum_t **actual_md5_checksum,
                                svn_wc__db_t *db,
                                const char *local_abspath,
                                apr_pool_t *result_pool,
                                apr_pool_t *scratch_pool)
{
  svn_stream_t *base_stream;

  SVN_ERR(svn_wc__get_pristine_contents(&base_stream, ((void*)0), db, local_abspath,
                                        result_pool, scratch_pool));
  if (base_stream == ((void*)0))
    {
      base_stream = svn_stream_empty(result_pool);
      *expected_md5_checksum = ((void*)0);
      *actual_md5_checksum = ((void*)0);
    }
  else
    {
      const svn_checksum_t *expected_md5;

      SVN_ERR(svn_wc__db_read_info(((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                   ((void*)0), ((void*)0), ((void*)0), ((void*)0), &expected_md5,
                                   ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                   ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                   ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                   db, local_abspath,
                                   result_pool, scratch_pool));
      if (expected_md5 == ((void*)0))
        return svn_error_createf(SVN_ERR_WC_CORRUPT, ((void*)0),
                                 _("Pristine checksum for file '%s' is missing"),
                                 svn_dirent_local_style(local_abspath,
                                                        scratch_pool));
      if (expected_md5->kind != svn_checksum_md5)
        SVN_ERR(svn_wc__db_pristine_get_md5(&expected_md5, db, local_abspath,
                                            expected_md5,
                                            result_pool, scratch_pool));
      *expected_md5_checksum = expected_md5;



      base_stream = svn_stream_checksummed2(base_stream, actual_md5_checksum,
                                            ((void*)0), svn_checksum_md5, TRUE,
                                            result_pool);
    }

  *stream = base_stream;
  return SVN_NO_ERROR;
}
