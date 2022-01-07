
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
struct TYPE_3__ {int pool; } ;
typedef TYPE_1__ config_access_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ILLEGAL_TARGET ;
 int * SVN_NO_ERROR ;
 int svn_checksum (int **,int ,char*,int ,int ) ;
 int svn_checksum_md5 ;
 int * svn_error_createf (int ,int *,char*,char const*) ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 int * svn_stream_empty (int ) ;

__attribute__((used)) static svn_error_t *
handle_missing_file(svn_stream_t **stream,
                    svn_checksum_t **checksum,
                    config_access_t *access,
                    const char *path,
                    svn_boolean_t must_exist,
                    svn_node_kind_t node_kind)
{
  if (node_kind == svn_node_none && !must_exist)
    {
      *stream = svn_stream_empty(access->pool);
      SVN_ERR(svn_checksum(checksum, svn_checksum_md5, "", 0, access->pool));
    }
  else if (node_kind != svn_node_file)
    {
      return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                               "'%s' is not a file", path);
    }

  return SVN_NO_ERROR;
}
