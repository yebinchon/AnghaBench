
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_fs_x__txn_id_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_uint64_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int svn__base36toui64 (char const**,char const*) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_x__path_txn_next_ids (int *,int ,int *) ;
 int svn_fs_x__read_content (TYPE_1__**,int ,int *) ;

__attribute__((used)) static svn_error_t *
read_next_ids(apr_uint64_t *node_id,
              apr_uint64_t *copy_id,
              svn_fs_t *fs,
              svn_fs_x__txn_id_t txn_id,
              apr_pool_t *scratch_pool)
{
  svn_stringbuf_t *buf;
  const char *str;
  SVN_ERR(svn_fs_x__read_content(&buf,
                                 svn_fs_x__path_txn_next_ids(fs, txn_id,
                                                             scratch_pool),
                                 scratch_pool));



  str = buf->data;
  *node_id = svn__base36toui64(&str, str);
  if (*str != ' ')
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("next-id file corrupt"));

  ++str;
  *copy_id = svn__base36toui64(&str, str);
  if (*str != '\n')
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("next-id file corrupt"));

  return SVN_NO_ERROR;
}
