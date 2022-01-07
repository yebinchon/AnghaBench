
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_wc_operation_t ;
typedef int svn_wc_conflict_version_t ;
struct TYPE_4__ {char const* mime_type; int merged_file; int their_abspath; int base_abspath; int my_abspath; int const* src_right_version; int const* src_left_version; int operation; int is_binary; } ;
typedef TYPE_1__ svn_wc_conflict_description2_t ;
typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_pstrdup (int *,char const*) ;
 int svn_mime_type_is_binary (char const*) ;
 int svn_wc__conflict_read_text_conflict (int *,int *,int *,int *,char const*,int const*,int *,int *) ;
 TYPE_1__* svn_wc_conflict_description_create_text2 (char const*,int *) ;

__attribute__((used)) static svn_error_t *
read_text_conflict_desc(svn_wc_conflict_description2_t **desc,
                        svn_wc__db_t *db,
                        const char *local_abspath,
                        const svn_skel_t *conflict_skel,
                        const char *mime_type,
                        svn_wc_operation_t operation,
                        const svn_wc_conflict_version_t *left_version,
                        const svn_wc_conflict_version_t *right_version,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  *desc = svn_wc_conflict_description_create_text2(local_abspath, result_pool);
  (*desc)->mime_type = mime_type;
  (*desc)->is_binary = mime_type ? svn_mime_type_is_binary(mime_type) : FALSE;
  (*desc)->operation = operation;
  (*desc)->src_left_version = left_version;
  (*desc)->src_right_version = right_version;

  SVN_ERR(svn_wc__conflict_read_text_conflict(&(*desc)->my_abspath,
                                              &(*desc)->base_abspath,
                                              &(*desc)->their_abspath,
                                              db, local_abspath,
                                              conflict_skel,
                                              result_pool, scratch_pool));
  (*desc)->merged_file = apr_pstrdup(result_pool, local_abspath);

  return SVN_NO_ERROR;
}
