
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_checksum_t ;
typedef int apr_pool_t ;


 int PRISTINE_STORAGE_EXT ;
 char const* PRISTINE_STORAGE_RELPATH ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 char* apr_pstrcat (int *,char const*,int ,int ) ;
 scalar_t__ svn_checksum_sha1 ;
 char* svn_checksum_to_cstring (TYPE_1__ const*,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 char* svn_dirent_join_many (int *,char const*,char*,char const*,int ) ;
 char* svn_wc_get_adm_dir (int *) ;

__attribute__((used)) static svn_error_t *
get_pristine_fname(const char **pristine_abspath,
                   const char *wcroot_abspath,
                   const svn_checksum_t *sha1_checksum,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  const char *base_dir_abspath;
  const char *hexdigest = svn_checksum_to_cstring(sha1_checksum, scratch_pool);
  char subdir[3];


  SVN_ERR_ASSERT(pristine_abspath != ((void*)0));
  SVN_ERR_ASSERT(svn_dirent_is_absolute(wcroot_abspath));
  SVN_ERR_ASSERT(sha1_checksum != ((void*)0));
  SVN_ERR_ASSERT(sha1_checksum->kind == svn_checksum_sha1);

  base_dir_abspath = svn_dirent_join_many(scratch_pool,
                                          wcroot_abspath,
                                          svn_wc_get_adm_dir(scratch_pool),
                                          PRISTINE_STORAGE_RELPATH,
                                          SVN_VA_NULL);


  SVN_ERR_ASSERT(hexdigest != ((void*)0));


  subdir[0] = hexdigest[0];
  subdir[1] = hexdigest[1];
  subdir[2] = '\0';

  hexdigest = apr_pstrcat(scratch_pool, hexdigest, PRISTINE_STORAGE_EXT,
                          SVN_VA_NULL);


  *pristine_abspath = svn_dirent_join_many(result_pool,
                                           base_dir_abspath,
                                           subdir,
                                           hexdigest,
                                           SVN_VA_NULL);
  return SVN_NO_ERROR;
}
