
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pool; } ;
typedef TYPE_2__ trail_t ;
typedef int svn_error_t ;
struct write_rep_args {int len; int buf; TYPE_1__* wb; } ;
struct TYPE_5__ {int sha1_checksum_ctx; int md5_checksum_ctx; int txn_id; int rep_key; int fs; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int rep_write (int ,int ,int ,int ,int ,TYPE_2__*,int ) ;
 int svn_checksum_update (int ,int ,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_write_rep(void *baton, trail_t *trail)
{
  struct write_rep_args *args = baton;

  SVN_ERR(rep_write(args->wb->fs,
                    args->wb->rep_key,
                    args->buf,
                    args->len,
                    args->wb->txn_id,
                    trail,
                    trail->pool));
  SVN_ERR(svn_checksum_update(args->wb->md5_checksum_ctx,
                              args->buf, args->len));
  SVN_ERR(svn_checksum_update(args->wb->sha1_checksum_ctx,
                              args->buf, args->len));
  return SVN_NO_ERROR;
}
