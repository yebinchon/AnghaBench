
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_5__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_6__ {scalar_t__ format; int flush_to_disk; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_uint64_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT ;
 int SVN_INT64_BUFFER_SIZE ;
 int * SVN_NO_ERROR ;
 char* apr_psprintf (int *,char*,int ,...) ;
 int strlen (char*) ;
 int svn__ui64tobase36 (char*,int ) ;
 char* svn_fs_fs__path_current (TYPE_1__*,int *) ;
 int svn_io_write_atomic2 (char const*,char*,int ,char const*,int ,int *) ;

svn_error_t *
svn_fs_fs__write_current(svn_fs_t *fs,
                         svn_revnum_t rev,
                         apr_uint64_t next_node_id,
                         apr_uint64_t next_copy_id,
                         apr_pool_t *pool)
{
  char *buf;
  const char *name;
  fs_fs_data_t *ffd = fs->fsap_data;


  if (ffd->format >= SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT)
    {
      buf = apr_psprintf(pool, "%ld\n", rev);
    }
  else
    {
      char node_id_str[SVN_INT64_BUFFER_SIZE];
      char copy_id_str[SVN_INT64_BUFFER_SIZE];
      svn__ui64tobase36(node_id_str, next_node_id);
      svn__ui64tobase36(copy_id_str, next_copy_id);

      buf = apr_psprintf(pool, "%ld %s %s\n", rev, node_id_str, copy_id_str);
    }

  name = svn_fs_fs__path_current(fs, pool);
  SVN_ERR(svn_io_write_atomic2(name, buf, strlen(buf),
                               name ,
                               ffd->flush_to_disk, pool));

  return SVN_NO_ERROR;
}
