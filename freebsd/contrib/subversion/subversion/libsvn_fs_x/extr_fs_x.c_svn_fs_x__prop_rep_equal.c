
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int change_set; } ;
struct TYPE_8__ {int md5_digest; TYPE_1__ id; } ;
typedef TYPE_2__ svn_fs_x__representation_t ;
struct TYPE_9__ {int noderev_id; TYPE_2__* prop_rep; } ;
typedef TYPE_3__ svn_fs_x__noderev_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ memcmp (int ,int ,int) ;
 int svn_fs__prop_lists_equal (int *,int *,int *) ;
 int svn_fs_x__get_proplist (int **,int *,TYPE_3__*,int *,int *) ;
 scalar_t__ svn_fs_x__id_eq (int *,int *) ;
 scalar_t__ svn_fs_x__is_revision (int ) ;

svn_error_t *
svn_fs_x__prop_rep_equal(svn_boolean_t *equal,
                         svn_fs_t *fs,
                         svn_fs_x__noderev_t *a,
                         svn_fs_x__noderev_t *b,
                         svn_boolean_t strict,
                         apr_pool_t *scratch_pool)
{
  svn_fs_x__representation_t *rep_a = a->prop_rep;
  svn_fs_x__representation_t *rep_b = b->prop_rep;
  apr_hash_t *proplist_a;
  apr_hash_t *proplist_b;


  if (rep_a == rep_b)
    {
      *equal = TRUE;
      return SVN_NO_ERROR;
    }


  if ( rep_a && rep_b
      && svn_fs_x__is_revision(rep_a->id.change_set)
      && svn_fs_x__is_revision(rep_b->id.change_set))
    {


      *equal = memcmp(rep_a->md5_digest, rep_b->md5_digest,
                      sizeof(rep_a->md5_digest)) == 0;
      return SVN_NO_ERROR;
    }


  if (svn_fs_x__id_eq(&a->noderev_id, &b->noderev_id))
    {
      *equal = TRUE;
      return SVN_NO_ERROR;
    }



  if (!strict)
    {
      *equal = FALSE;
      return SVN_NO_ERROR;
    }



  SVN_ERR(svn_fs_x__get_proplist(&proplist_a, fs, a, scratch_pool,
                                 scratch_pool));
  SVN_ERR(svn_fs_x__get_proplist(&proplist_b, fs, b, scratch_pool,
                                 scratch_pool));

  *equal = svn_fs__prop_lists_equal(proplist_a, proplist_b, scratch_pool);
  return SVN_NO_ERROR;
}
