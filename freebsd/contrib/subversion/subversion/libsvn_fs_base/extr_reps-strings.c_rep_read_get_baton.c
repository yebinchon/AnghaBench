
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trail_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct rep_read_baton {char const* rep_key; scalar_t__ offset; int scratch_pool; int * trail; int * fs; int checksum_finalized; scalar_t__ size; void* sha1_checksum_ctx; void* md5_checksum_ctx; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 struct rep_read_baton* apr_pcalloc (int *,int) ;
 void* svn_checksum_ctx_create (int ,int *) ;
 int svn_checksum_md5 ;
 int svn_checksum_sha1 ;
 int svn_fs_base__rep_contents_size (scalar_t__*,int *,char const*,int *,int *) ;
 int svn_pool_create (int *) ;

__attribute__((used)) static svn_error_t *
rep_read_get_baton(struct rep_read_baton **rb_p,
                   svn_fs_t *fs,
                   const char *rep_key,
                   svn_boolean_t use_trail_for_reads,
                   trail_t *trail,
                   apr_pool_t *pool)
{
  struct rep_read_baton *b;

  b = apr_pcalloc(pool, sizeof(*b));
  b->md5_checksum_ctx = svn_checksum_ctx_create(svn_checksum_md5, pool);
  b->sha1_checksum_ctx = svn_checksum_ctx_create(svn_checksum_sha1, pool);

  if (rep_key)
    SVN_ERR(svn_fs_base__rep_contents_size(&(b->size), fs, rep_key,
                                           trail, pool));
  else
    b->size = 0;

  b->checksum_finalized = FALSE;
  b->fs = fs;
  b->trail = use_trail_for_reads ? trail : ((void*)0);
  b->scratch_pool = svn_pool_create(pool);
  b->rep_key = rep_key;
  b->offset = 0;

  *rb_p = b;

  return SVN_NO_ERROR;
}
