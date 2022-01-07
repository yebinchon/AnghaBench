
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int expanded_size; int size; } ;
typedef TYPE_1__ svn_fs_x__representation_t ;
struct TYPE_15__ {int predecessor_count; TYPE_1__* data_rep; TYPE_1__* prop_rep; int predecessor_id; } ;
typedef TYPE_2__ svn_fs_x__noderev_t ;
typedef int svn_fs_x__id_t ;
struct TYPE_16__ {scalar_t__ max_linear_deltification; scalar_t__ max_deltification_walk; } ;
typedef TYPE_3__ svn_fs_x__data_t ;
struct TYPE_17__ {TYPE_3__* fsap_data; } ;
typedef TYPE_4__ svn_fs_t ;
typedef int svn_filesize_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int shards_spanned (int*,TYPE_4__*,TYPE_2__*,int,int *) ;
 int svn_fs_x__get_node_revision (TYPE_2__**,TYPE_4__*,int *,int *,int *) ;
 int svn_fs_x__rep_chain_length (int*,int*,TYPE_1__*,TYPE_4__*,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
choose_delta_base(svn_fs_x__representation_t **rep,
                  svn_fs_t *fs,
                  svn_fs_x__noderev_t *noderev,
                  svn_boolean_t props,
                  apr_pool_t *pool)
{


  int count;




  int walk;
  svn_fs_x__noderev_t *base;
  svn_fs_x__data_t *ffd = fs->fsap_data;
  apr_pool_t *iterpool;



  if (! noderev->predecessor_count)
    {
      *rep = ((void*)0);
      return SVN_NO_ERROR;
    }





  count = noderev->predecessor_count;
  count = count & (count - 1);





  walk = noderev->predecessor_count - count;
  if (walk > (int)ffd->max_deltification_walk)
    {
      *rep = ((void*)0);
      return SVN_NO_ERROR;
    }




  if (walk < (int)ffd->max_linear_deltification)
    {
      int shards;
      SVN_ERR(shards_spanned(&shards, fs, noderev, walk, pool));



      if ((1 << (--shards)) <= walk)
        count = noderev->predecessor_count - 1;
    }





  base = noderev;
  iterpool = svn_pool_create(pool);
  while ((count++) < noderev->predecessor_count)
    {
      svn_fs_x__id_t id = noderev->predecessor_id;
      svn_pool_clear(iterpool);
      SVN_ERR(svn_fs_x__get_node_revision(&base, fs, &id, pool, iterpool));
    }
  svn_pool_destroy(iterpool);


  *rep = props ? base->prop_rep : base->data_rep;



  if (*rep)
    {
      int chain_length = 0;
      int shard_count = 0;



      svn_filesize_t rep_size = (*rep)->expanded_size
                              ? (*rep)->expanded_size
                              : (*rep)->size;
      if (rep_size < 64)
        {
          *rep = ((void*)0);
          return SVN_NO_ERROR;
        }




      SVN_ERR(svn_fs_x__rep_chain_length(&chain_length, &shard_count,
                                          *rep, fs, pool));



      if (chain_length >= 2 * (int)ffd->max_linear_deltification + 2)
        *rep = ((void*)0);
      else





        if ( shard_count > 1
            && ((svn_filesize_t)128 << shard_count) >= rep_size)
          *rep = ((void*)0);
    }

  return SVN_NO_ERROR;
}
