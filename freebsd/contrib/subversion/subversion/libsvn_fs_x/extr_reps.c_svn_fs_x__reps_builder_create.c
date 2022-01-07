
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* instructions; void* reps; void* bases; int hash; int text; int * fs; } ;
typedef TYPE_1__ svn_fs_x__reps_builder_t ;
typedef int svn_fs_t ;
typedef int rep_t ;
typedef int instruction_t ;
typedef int base_t ;
typedef int apr_pool_t ;


 void* apr_array_make (int *,int ,int) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int init_hash (int *,int,int *) ;
 int svn_stringbuf_create_empty (int *) ;

svn_fs_x__reps_builder_t *
svn_fs_x__reps_builder_create(svn_fs_t *fs,
                              apr_pool_t *result_pool)
{
  svn_fs_x__reps_builder_t *result = apr_pcalloc(result_pool,
                                                 sizeof(*result));

  result->fs = fs;
  result->text = svn_stringbuf_create_empty(result_pool);
  init_hash(&result->hash, 4, result_pool);

  result->bases = apr_array_make(result_pool, 0, sizeof(base_t));
  result->reps = apr_array_make(result_pool, 0, sizeof(rep_t));
  result->instructions = apr_array_make(result_pool, 0,
                                        sizeof(instruction_t));

  return result;
}
