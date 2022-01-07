
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_spillbuf_t ;
struct sbb_baton {int scratch_pool; int * holding; int * spillbuf; } ;
typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
typedef int apr_pool_t ;


 int sb_bucket_vtable ;
 int * serf_bucket_create (int *,int *,struct sbb_baton*) ;
 struct sbb_baton* serf_bucket_mem_alloc (int *,int) ;
 int svn_pool_create (int *) ;

serf_bucket_t *
svn_ra_serf__create_sb_bucket(svn_spillbuf_t *spillbuf,
                              serf_bucket_alloc_t *allocator,
                              apr_pool_t *result_pool,
                              apr_pool_t *scratch_pool)
{
  struct sbb_baton *sbb;

  sbb = serf_bucket_mem_alloc(allocator, sizeof(*sbb));
  sbb->spillbuf = spillbuf;
  sbb->holding = ((void*)0);
  sbb->scratch_pool = svn_pool_create(result_pool);

  return serf_bucket_create(&sb_bucket_vtable, allocator, sbb);
}
