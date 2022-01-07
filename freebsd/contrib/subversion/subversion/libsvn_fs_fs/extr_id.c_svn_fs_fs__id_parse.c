
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_FS_MALFORMED_NODEREV_ID ;
 int * SVN_NO_ERROR ;
 int * id_parse (char*,int *) ;
 int * svn_error_createf (int ,int *,char*) ;

svn_error_t *
svn_fs_fs__id_parse(const svn_fs_id_t **id_p,
                    char *data,
                    apr_pool_t *pool)
{
  svn_fs_id_t *id = id_parse(data, pool);
  if (id == ((void*)0))
    return svn_error_createf(SVN_ERR_FS_MALFORMED_NODEREV_ID, ((void*)0),
                             "Malformed node revision ID string");

  *id_p = id;

  return SVN_NO_ERROR;
}
