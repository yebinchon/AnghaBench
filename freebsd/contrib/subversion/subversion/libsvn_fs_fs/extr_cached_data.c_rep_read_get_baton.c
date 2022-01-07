
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int expanded_size; int md5_digest; } ;
struct rep_read_baton {int * current_fulltext; scalar_t__ fulltext_delivered; int * fulltext_cache; void* filehandle_pool; void* pool; int fulltext_cache_key; scalar_t__ off; int len; int md5_digest; int checksum_finalized; int md5_checksum_ctx; int * buf; scalar_t__ chunk_index; int * base_window; TYPE_1__ rep; int * fs; } ;
typedef TYPE_1__ representation_t ;
typedef int pair_cache_key_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * SVN_NO_ERROR ;
 struct rep_read_baton* apr_pcalloc (int *,int) ;
 int memcpy (int ,int ,int) ;
 int svn_checksum_ctx_create (int ,int *) ;
 int svn_checksum_md5 ;
 void* svn_pool_create (int *) ;

__attribute__((used)) static svn_error_t *
rep_read_get_baton(struct rep_read_baton **rb_p,
                   svn_fs_t *fs,
                   representation_t *rep,
                   pair_cache_key_t fulltext_cache_key,
                   apr_pool_t *pool)
{
  struct rep_read_baton *b;

  b = apr_pcalloc(pool, sizeof(*b));
  b->fs = fs;
  b->rep = *rep;
  b->base_window = ((void*)0);
  b->chunk_index = 0;
  b->buf = ((void*)0);
  b->md5_checksum_ctx = svn_checksum_ctx_create(svn_checksum_md5, pool);
  b->checksum_finalized = FALSE;
  memcpy(b->md5_digest, rep->md5_digest, sizeof(rep->md5_digest));
  b->len = rep->expanded_size;
  b->off = 0;
  b->fulltext_cache_key = fulltext_cache_key;
  b->pool = svn_pool_create(pool);
  b->filehandle_pool = svn_pool_create(pool);
  b->fulltext_cache = ((void*)0);
  b->fulltext_delivered = 0;
  b->current_fulltext = ((void*)0);


  *rb_p = b;

  return SVN_NO_ERROR;
}
