
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__* first_instructions; } ;
typedef TYPE_1__ svn_fs_x__reps_t ;
struct TYPE_9__ {int * pool; int result; int * fs; } ;
typedef TYPE_2__ svn_fs_x__rep_extractor_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_uint32_t ;
typedef size_t apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 int get_text (TYPE_2__*,TYPE_1__ const*,scalar_t__,scalar_t__) ;
 int svn_stringbuf_create_empty (int *) ;

svn_error_t *
svn_fs_x__reps_get(svn_fs_x__rep_extractor_t **extractor,
                   svn_fs_t *fs,
                   const svn_fs_x__reps_t *container,
                   apr_size_t idx,
                   apr_pool_t *result_pool)
{
  apr_uint32_t first = container->first_instructions[idx];
  apr_uint32_t last = container->first_instructions[idx + 1];


  svn_fs_x__rep_extractor_t *result = apr_pcalloc(result_pool,
                                                  sizeof(*result));
  result->fs = fs;
  result->result = svn_stringbuf_create_empty(result_pool);
  result->pool = result_pool;



  get_text(result, container, first, last - first);
  *extractor = result;
  return SVN_NO_ERROR;
}
