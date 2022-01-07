
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_error_t ;
typedef int svn_diff_t ;
typedef int svn_diff_file_options_t ;
struct TYPE_4__ {int const* normalization_options; int * sources; } ;
typedef TYPE_1__ diff_mem_baton_t ;
typedef int apr_pool_t ;


 int alloc_normalization_bufs (TYPE_1__*,int,int *) ;
 int fill_source_tokens (int *,int const*,int *) ;
 int svn_diff__mem_vtable ;
 int * svn_diff_diff3_2 (int **,TYPE_1__*,int *,int *) ;

svn_error_t *
svn_diff_mem_string_diff3(svn_diff_t **diff,
                          const svn_string_t *original,
                          const svn_string_t *modified,
                          const svn_string_t *latest,
                          const svn_diff_file_options_t *options,
                          apr_pool_t *pool)
{
  diff_mem_baton_t baton;

  fill_source_tokens(&(baton.sources[0]), original, pool);
  fill_source_tokens(&(baton.sources[1]), modified, pool);
  fill_source_tokens(&(baton.sources[2]), latest, pool);
  alloc_normalization_bufs(&baton, 3, pool);

  baton.normalization_options = options;

  return svn_diff_diff3_2(diff, &baton, &svn_diff__mem_vtable, pool);
}
