
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * absent_node (char const*,int ,void*,int *) ;
 int svn_node_file ;

__attribute__((used)) static svn_error_t *
absent_file(const char *path,
            void *parent_baton,
            apr_pool_t *pool)
{
  return absent_node(path, svn_node_file, parent_baton, pool);
}
