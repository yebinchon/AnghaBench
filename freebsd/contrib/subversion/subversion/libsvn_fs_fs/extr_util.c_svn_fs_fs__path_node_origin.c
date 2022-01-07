
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int path; } ;
typedef TYPE_1__ svn_fs_t ;
struct TYPE_6__ {int number; } ;
typedef TYPE_2__ svn_fs_fs__id_part_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int PATH_NODE_ORIGINS_DIR ;
 int SVN_INT64_BUFFER_SIZE ;
 int SVN_VA_NULL ;
 int svn__ui64tobase36 (char*,int ) ;
 char const* svn_dirent_join_many (int *,int ,int ,char*,int ) ;

const char *
svn_fs_fs__path_node_origin(svn_fs_t *fs,
                            const svn_fs_fs__id_part_t *node_id,
                            apr_pool_t *pool)
{
  char buffer[SVN_INT64_BUFFER_SIZE];
  apr_size_t len = svn__ui64tobase36(buffer, node_id->number);

  if (len > 1)
    buffer[len - 1] = '\0';

  return svn_dirent_join_many(pool, fs->path, PATH_NODE_ORIGINS_DIR,
                              buffer, SVN_VA_NULL);
}
