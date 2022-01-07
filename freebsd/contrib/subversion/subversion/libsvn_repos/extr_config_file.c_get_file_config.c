
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_stream_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
struct TYPE_8__ {int pool; } ;
typedef TYPE_2__ config_access_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int handle_missing_file (int **,int **,TYPE_2__*,char const*,int ,scalar_t__) ;
 int svn_checksum (int **,int ,int ,int ,int ) ;
 int svn_checksum_md5 ;
 int * svn_error_trace (int ) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_file ;
 int * svn_stream_from_stringbuf (TYPE_1__*,int ) ;
 int svn_stringbuf_from_file2 (TYPE_1__**,char const*,int ) ;

__attribute__((used)) static svn_error_t *
get_file_config(svn_stream_t **stream,
                svn_checksum_t **checksum,
                config_access_t *access,
                const char *path,
                svn_boolean_t must_exist,
                apr_pool_t *scratch_pool)
{
  svn_stringbuf_t *contents;
  svn_node_kind_t node_kind;


  SVN_ERR(svn_io_check_path(path, &node_kind, scratch_pool));
  if (node_kind != svn_node_file)
    return svn_error_trace(handle_missing_file(stream, checksum, access,
                                               path, must_exist, node_kind));


  SVN_ERR(svn_stringbuf_from_file2(&contents, path, access->pool));


  SVN_ERR(svn_checksum(checksum, svn_checksum_md5,
                       contents->data, contents->len, access->pool));
  *stream = svn_stream_from_stringbuf(contents, access->pool);

  return SVN_NO_ERROR;
}
