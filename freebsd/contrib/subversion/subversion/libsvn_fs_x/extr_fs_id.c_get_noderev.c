
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_fs_x__noderev_t ;
typedef int svn_fs_x__id_context_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int * fsap_data; } ;
struct TYPE_6__ {int noderev_id; TYPE_1__ generic_id; } ;
typedef TYPE_2__ fs_x__id_t ;
typedef int apr_pool_t ;


 int * get_aux_pool (TYPE_2__ const*) ;
 int * get_fs (int *) ;
 int svn_error_clear (int *) ;
 int * svn_fs_x__get_node_revision (int **,int *,int *,int *,int *) ;

__attribute__((used)) static svn_fs_x__noderev_t *
get_noderev(const fs_x__id_t *id)
{
  svn_fs_x__noderev_t *result = ((void*)0);

  svn_fs_x__id_context_t *context = id->generic_id.fsap_data;
  svn_fs_t *fs = get_fs(context);
  apr_pool_t *pool = get_aux_pool(id);

  if (fs)
    {
      svn_error_t *err = svn_fs_x__get_node_revision(&result, fs,
                                                     &id->noderev_id,
                                                     pool, pool);
      if (err)
        {
          svn_error_clear(err);
          result = ((void*)0);
        }
    }

  return result;
}
