
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct rep_write_baton {int pool; int fs; scalar_t__ trail; scalar_t__ finalized; int sha1_checksum_ctx; int sha1_checksum; int md5_checksum_ctx; int md5_checksum; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ TRUE ;
 int svn_checksum_final (int *,int ,int ) ;
 int * svn_fs_base__retry_txn (int ,int * (*) (struct rep_write_baton*,scalar_t__),struct rep_write_baton*,int ,int ) ;
 int * txn_body_write_close_rep (struct rep_write_baton*,scalar_t__) ;

__attribute__((used)) static svn_error_t *
rep_write_close_contents(void *baton)
{
  struct rep_write_baton *wb = baton;
  if (! wb->finalized)
    {
      SVN_ERR(svn_checksum_final(&wb->md5_checksum, wb->md5_checksum_ctx,
                                 wb->pool));
      SVN_ERR(svn_checksum_final(&wb->sha1_checksum, wb->sha1_checksum_ctx,
                                 wb->pool));
      wb->finalized = TRUE;
    }


  if (wb->trail)
    return txn_body_write_close_rep(wb, wb->trail);
  else


    return svn_fs_base__retry_txn(wb->fs, txn_body_write_close_rep,
                                  wb, FALSE, wb->pool);
}
