
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {TYPE_4__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_filesize_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_15__ {int expanded_size; } ;
typedef TYPE_2__ representation_t ;
struct TYPE_16__ {int predecessor_count; TYPE_2__* data_rep; TYPE_2__* prop_rep; int predecessor_id; } ;
typedef TYPE_3__ node_revision_t ;
struct TYPE_17__ {scalar_t__ max_linear_deltification; scalar_t__ max_deltification_walk; } ;
typedef TYPE_4__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int shards_spanned (int*,TYPE_1__*,TYPE_3__*,int,int *) ;
 int svn_fs_fs__get_node_revision (TYPE_3__**,TYPE_1__*,int ,int *,int *) ;
 int svn_fs_fs__rep_chain_length (int*,int*,TYPE_2__*,TYPE_1__*,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
choose_delta_base(representation_t **rep,
                  svn_fs_t *fs,
                  node_revision_t *noderev,
                  svn_boolean_t props,
                  apr_pool_t *pool)
{


  int count;



  int walk;
  node_revision_t *base;
  fs_fs_data_t *ffd = fs->fsap_data;
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
      svn_pool_clear(iterpool);
      SVN_ERR(svn_fs_fs__get_node_revision(&base, fs,
                                           base->predecessor_id, pool,
                                           iterpool));
    }
  svn_pool_destroy(iterpool);


  *rep = props ? base->prop_rep : base->data_rep;



  if (*rep)
    {
      int chain_length = 0;
      int shard_count = 0;



      svn_filesize_t rep_size = (*rep)->expanded_size;
      if (rep_size < 64)
        {
          *rep = ((void*)0);
          return SVN_NO_ERROR;
        }




      SVN_ERR(svn_fs_fs__rep_chain_length(&chain_length, &shard_count,
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
