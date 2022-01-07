
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trail_t ;
typedef int svn_fs_t ;
struct rep_write_baton {char const* rep_key; char const* txn_id; int * pool; int * trail; int * fs; void* sha1_checksum_ctx; void* md5_checksum_ctx; } ;
typedef int apr_pool_t ;


 struct rep_write_baton* apr_pcalloc (int *,int) ;
 void* svn_checksum_ctx_create (int ,int *) ;
 int svn_checksum_md5 ;
 int svn_checksum_sha1 ;

__attribute__((used)) static struct rep_write_baton *
rep_write_get_baton(svn_fs_t *fs,
                    const char *rep_key,
                    const char *txn_id,
                    trail_t *trail,
                    apr_pool_t *pool)
{
  struct rep_write_baton *b;

  b = apr_pcalloc(pool, sizeof(*b));
  b->md5_checksum_ctx = svn_checksum_ctx_create(svn_checksum_md5, pool);
  b->sha1_checksum_ctx = svn_checksum_ctx_create(svn_checksum_sha1, pool);
  b->fs = fs;
  b->trail = trail;
  b->pool = pool;
  b->rep_key = rep_key;
  b->txn_id = txn_id;
  return b;
}
