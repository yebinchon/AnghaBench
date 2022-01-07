
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_checksum_t ;
struct file_baton {int path; TYPE_1__* edit_baton; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int txn_root; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int svn_checksum_match (int *,int *) ;
 int svn_checksum_md5 ;
 int * svn_checksum_mismatch_err (int *,int *,int *,int ,int ) ;
 int svn_checksum_parse_hex (int **,int ,char const*,int *) ;
 int svn_fs_file_checksum (int **,int ,int ,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
close_file(void *file_baton,
           const char *text_digest,
           apr_pool_t *pool)
{
  struct file_baton *fb = file_baton;

  if (text_digest)
    {
      svn_checksum_t *checksum;
      svn_checksum_t *text_checksum;

      SVN_ERR(svn_fs_file_checksum(&checksum, svn_checksum_md5,
                                   fb->edit_baton->txn_root, fb->path,
                                   TRUE, pool));
      SVN_ERR(svn_checksum_parse_hex(&text_checksum, svn_checksum_md5,
                                     text_digest, pool));

      if (!svn_checksum_match(text_checksum, checksum))
        return svn_checksum_mismatch_err(text_checksum, checksum, pool,
                            _("Checksum mismatch for resulting fulltext\n(%s)"),
                            fb->path);
    }

  return SVN_NO_ERROR;
}
