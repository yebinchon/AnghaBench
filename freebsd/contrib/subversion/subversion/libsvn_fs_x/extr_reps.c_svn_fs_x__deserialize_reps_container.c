
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int instructions; int first_instructions; int bases; int text; } ;
typedef TYPE_1__ svn_fs_x__reps_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int svn_temp_deserializer__resolve (TYPE_1__*,void**) ;

svn_error_t *
svn_fs_x__deserialize_reps_container(void **out,
                                     void *data,
                                     apr_size_t data_len,
                                     apr_pool_t *result_pool)
{
  svn_fs_x__reps_t *reps = (svn_fs_x__reps_t *)data;


  svn_temp_deserializer__resolve(reps, (void **)&reps->text);
  svn_temp_deserializer__resolve(reps, (void **)&reps->bases);
  svn_temp_deserializer__resolve(reps, (void **)&reps->first_instructions);
  svn_temp_deserializer__resolve(reps, (void **)&reps->instructions);


  *out = reps;

  return SVN_NO_ERROR;
}
