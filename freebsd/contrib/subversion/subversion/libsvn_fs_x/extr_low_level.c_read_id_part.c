
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_x__id_t ;
typedef int svn_error_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_fs_x__id_parse (int *,char const*) ;
 char* svn_hash_gets (int *,char const*) ;

__attribute__((used)) static svn_error_t *
read_id_part(svn_fs_x__id_t *id,
             apr_hash_t *headers,
             const char *header_name)
{
  const char *value = svn_hash_gets(headers, header_name);
  if (value == ((void*)0))
    return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                             _("Missing %s field in node-rev"),
                             header_name);

  SVN_ERR(svn_fs_x__id_parse(id, value));
  return SVN_NO_ERROR;
}
