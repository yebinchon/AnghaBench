
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_error_t ;
struct TYPE_8__ {scalar_t__ kind; } ;
typedef TYPE_2__ svn_checksum_t ;
struct TYPE_9__ {int wri_abspath; TYPE_1__* wc_ctx; TYPE_2__* checksum; } ;
typedef TYPE_3__ get_pristine_lazyopen_baton_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {int db; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ svn_checksum_sha1 ;
 int svn_wc__db_pristine_get_sha1 (TYPE_2__ const**,int ,int ,TYPE_2__*,int *,int *) ;
 int svn_wc__db_pristine_read (int **,int *,int ,int ,TYPE_2__ const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
get_pristine_lazyopen_func(svn_stream_t **stream,
                           void *baton,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  get_pristine_lazyopen_baton_t *b = baton;
  const svn_checksum_t *sha1_checksum;



  if (b->checksum->kind == svn_checksum_sha1)
    sha1_checksum = b->checksum;
  else
    SVN_ERR(svn_wc__db_pristine_get_sha1(&sha1_checksum, b->wc_ctx->db,
                                         b->wri_abspath, b->checksum,
                                         scratch_pool, scratch_pool));

  SVN_ERR(svn_wc__db_pristine_read(stream, ((void*)0), b->wc_ctx->db,
                                   b->wri_abspath, sha1_checksum,
                                   result_pool, scratch_pool));
  return SVN_NO_ERROR;
}
