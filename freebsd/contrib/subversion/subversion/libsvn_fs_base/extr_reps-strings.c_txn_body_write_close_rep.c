
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int pool; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct rep_write_baton {int rep_key; int fs; int sha1_checksum; int md5_checksum; } ;
struct TYPE_9__ {void* sha1_checksum; void* md5_checksum; } ;
typedef TYPE_2__ representation_t ;


 int SVN_ERR (int ) ;
 void* svn_checksum_dup (int ,int ) ;
 int svn_fs_bdb__read_rep (TYPE_2__**,int ,int ,TYPE_1__*,int ) ;
 int * svn_fs_bdb__write_rep (int ,int ,TYPE_2__*,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_write_close_rep(void *baton, trail_t *trail)
{
  struct rep_write_baton *wb = baton;
  representation_t *rep;

  SVN_ERR(svn_fs_bdb__read_rep(&rep, wb->fs, wb->rep_key,
                               trail, trail->pool));
  rep->md5_checksum = svn_checksum_dup(wb->md5_checksum, trail->pool);
  rep->sha1_checksum = svn_checksum_dup(wb->sha1_checksum, trail->pool);
  return svn_fs_bdb__write_rep(wb->fs, wb->rep_key, rep,
                               trail, trail->pool);
}
