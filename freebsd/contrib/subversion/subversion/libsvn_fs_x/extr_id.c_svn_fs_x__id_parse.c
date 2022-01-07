
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_x__id_t ;
typedef int svn_error_t ;


 int SVN_ERR_FS_MALFORMED_NODEREV_ID ;
 int * SVN_NO_ERROR ;
 int part_parse (int *,char const*) ;
 int * svn_error_createf (int ,int *,char*) ;

svn_error_t *
svn_fs_x__id_parse(svn_fs_x__id_t *part,
                   const char *data)
{
  if (!part_parse(part, data))
    return svn_error_createf(SVN_ERR_FS_MALFORMED_NODEREV_ID, ((void*)0),
                             "Malformed ID string");

  return SVN_NO_ERROR;
}
