
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* instructions; void* first_instructions; void* bases; void* text; } ;
typedef TYPE_1__ svn_fs_x__reps_t ;
struct TYPE_8__ {int idx; int fs; } ;
typedef TYPE_2__ svn_fs_x__reps_baton_t ;
typedef int svn_fs_x__rep_extractor_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_pmemdup (int *,TYPE_1__ const*,int) ;
 int svn_fs_x__reps_get (int **,int ,TYPE_1__*,int ,int *) ;
 void* svn_temp_deserializer__ptr (TYPE_1__ const*,void const**) ;

svn_error_t *
svn_fs_x__reps_get_func(void **out,
                        const void *data,
                        apr_size_t data_len,
                        void *baton,
                        apr_pool_t *pool)
{
  svn_fs_x__reps_baton_t *reps_baton = baton;


  const svn_fs_x__reps_t *cached = data;
  svn_fs_x__reps_t *reps = apr_pmemdup(pool, cached, sizeof(*reps));

  reps->text
    = svn_temp_deserializer__ptr(cached, (const void **)&cached->text);
  reps->bases
    = svn_temp_deserializer__ptr(cached, (const void **)&cached->bases);
  reps->first_instructions
    = svn_temp_deserializer__ptr(cached,
                                 (const void **)&cached->first_instructions);
  reps->instructions
    = svn_temp_deserializer__ptr(cached,
                                 (const void **)&cached->instructions);


  SVN_ERR(svn_fs_x__reps_get((svn_fs_x__rep_extractor_t **)out,
                             reps_baton->fs, reps, reps_baton->idx, pool));

  return SVN_NO_ERROR;
}
