
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_size_t ;


 int assert (int ) ;
 int is_canonical (char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

int
svn_path_compare_paths(const char *path1,
                       const char *path2)
{
  apr_size_t path1_len = strlen(path1);
  apr_size_t path2_len = strlen(path2);
  apr_size_t min_len = ((path1_len < path2_len) ? path1_len : path2_len);
  apr_size_t i = 0;

  assert(is_canonical(path1, path1_len));
  assert(is_canonical(path2, path2_len));


  while (i < min_len && path1[i] == path2[i])
    ++i;


  if ((path1_len == path2_len) && (i >= min_len))
    return 0;



  if ((path1[i] == '/') && (path2[i] == 0))
    return 1;
  if ((path2[i] == '/') && (path1[i] == 0))
    return -1;
  if (path1[i] == '/')
    return -1;
  if (path2[i] == '/')
    return 1;





  return (unsigned char)(path1[i]) < (unsigned char)(path2[i]) ? -1 : 1;
}
