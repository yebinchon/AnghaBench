
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int strlen (char const*) ;
 int svn_checksum (int **,int ,char const*,int ,int *) ;
 int svn_checksum_md5 ;
 char* svn_checksum_to_cstring_display (int *,int *) ;

__attribute__((used)) static svn_error_t *
make_digest(const char **digest,
            const char *str,
            apr_pool_t *pool)
{
  svn_checksum_t *checksum;

  SVN_ERR(svn_checksum(&checksum, svn_checksum_md5, str, strlen(str), pool));

  *digest = svn_checksum_to_cstring_display(checksum, pool);
  return SVN_NO_ERROR;
}
