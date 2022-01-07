
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
struct TYPE_9__ {TYPE_1__* read_baton; int read; } ;
struct TYPE_7__ {TYPE_3__ databuf; int * file; } ;
typedef TYPE_1__ file_context_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_mmap_t ;
struct TYPE_8__ {int size; } ;
typedef TYPE_2__ apr_finfo_t ;
typedef int apr_file_t ;


 int APR_FINFO_SIZE ;
 scalar_t__ APR_MMAP_CANDIDATE (int ) ;
 int APR_MMAP_READ ;
 scalar_t__ APR_SUCCESS ;
 int apr_file_name_get (char const**,int *) ;
 scalar_t__ apr_mmap_create (int **,int *,int ,int ,int ,int ) ;
 int apr_stat (TYPE_2__*,char const*,int ,int ) ;
 int file_reader ;
 int serf_bucket_allocator_get_pool (int *) ;
 int * serf_bucket_create (int *,int *,TYPE_1__*) ;
 TYPE_1__* serf_bucket_mem_alloc (int *,int) ;
 int * serf_bucket_mmap_create (int *,int *) ;
 int serf_bucket_type_file ;
 int serf_databuf_init (TYPE_3__*) ;

serf_bucket_t *serf_bucket_file_create(
    apr_file_t *file,
    serf_bucket_alloc_t *allocator)
{
    file_context_t *ctx;
    ctx = serf_bucket_mem_alloc(allocator, sizeof(*ctx));
    ctx->file = file;

    serf_databuf_init(&ctx->databuf);
    ctx->databuf.read = file_reader;
    ctx->databuf.read_baton = ctx;

    return serf_bucket_create(&serf_bucket_type_file, allocator, ctx);
}
