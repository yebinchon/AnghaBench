
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_6__ {scalar_t__ revision; scalar_t__ item_index; int md5_digest; int txn_id; } ;
typedef TYPE_1__ representation_t ;
struct TYPE_7__ {int id; TYPE_1__* prop_rep; } ;
typedef TYPE_2__ node_revision_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ memcmp (int ,int ,int) ;
 int svn_fs__prop_lists_equal (int *,int *,int *) ;
 int svn_fs_fs__get_proplist (int **,int *,TYPE_2__*,int *) ;
 scalar_t__ svn_fs_fs__id_eq (int ,int ) ;
 int svn_fs_fs__id_txn_used (int *) ;

svn_error_t *
svn_fs_fs__prop_rep_equal(svn_boolean_t *equal,
                          svn_fs_t *fs,
                          node_revision_t *a,
                          node_revision_t *b,
                          apr_pool_t *scratch_pool)
{
  representation_t *rep_a = a->prop_rep;
  representation_t *rep_b = b->prop_rep;
  apr_hash_t *proplist_a;
  apr_hash_t *proplist_b;


  if (rep_a == rep_b)
    {
      *equal = TRUE;
      return SVN_NO_ERROR;
    }


  if ( rep_a && rep_b
      && !svn_fs_fs__id_txn_used(&rep_a->txn_id)
      && !svn_fs_fs__id_txn_used(&rep_b->txn_id))
    {

      if ( (rep_a->revision == rep_b->revision)
          && (rep_a->item_index == rep_b->item_index))
        {
          *equal = TRUE;
          return SVN_NO_ERROR;
        }


      if (memcmp(rep_a->md5_digest, rep_b->md5_digest,
                 sizeof(rep_a->md5_digest)))
        {
          *equal = FALSE;
          return SVN_NO_ERROR;
        }
    }





  if (svn_fs_fs__id_eq(a->id, b->id))
    {
      *equal = TRUE;
      return SVN_NO_ERROR;
    }



  SVN_ERR(svn_fs_fs__get_proplist(&proplist_a, fs, a, scratch_pool));
  SVN_ERR(svn_fs_fs__get_proplist(&proplist_b, fs, b, scratch_pool));

  *equal = svn_fs__prop_lists_equal(proplist_a, proplist_b, scratch_pool);
  return SVN_NO_ERROR;
}
