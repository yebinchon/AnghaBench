
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char const* is_child (int ,char const*,char const*,int *) ;
 int type_dirent ;

const char *
svn_dirent_is_child(const char *parent_dirent,
                    const char *child_dirent,
                    apr_pool_t *pool)
{
  return is_child(type_dirent, parent_dirent, child_dirent, pool);
}
