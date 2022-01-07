
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_fs_x__id_t ;
typedef int apr_pool_t ;


 int SVN_INT64_BUFFER_SIZE ;
 char* part_unparse (char*,int const*) ;
 int * svn_string_ncreate (char*,int,int *) ;

svn_string_t *
svn_fs_x__id_unparse(const svn_fs_x__id_t *id,
                     apr_pool_t *result_pool)
{
  char string[2 * SVN_INT64_BUFFER_SIZE + 1];
  char *p = part_unparse(string, id);

  return svn_string_ncreate(string, p - string, result_pool);
}
