
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
struct TYPE_4__ {char const* data; int remaining; } ;
typedef TYPE_1__ eagain_baton_t ;
typedef int apr_size_t ;


 int delay_bucket_vtable ;
 int * serf_bucket_create (int *,int *,TYPE_1__*) ;
 TYPE_1__* serf_bucket_mem_alloc (int *,int) ;

serf_bucket_t *
svn_ra_serf__create_bucket_with_eagain(const char *data,
                                       apr_size_t len,
                                       serf_bucket_alloc_t *allocator)
{
  eagain_baton_t *eab;

  eab = serf_bucket_mem_alloc(allocator, sizeof(*eab));
  eab->data = data;
  eab->remaining = len;

  return serf_bucket_create(&delay_bucket_vtable, allocator, eab);
}
