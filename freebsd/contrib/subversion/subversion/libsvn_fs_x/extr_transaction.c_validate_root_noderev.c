
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_4__ {int predecessor_count; } ;
typedef TYPE_1__ svn_fs_x__noderev_t ;
typedef int svn_fs_x__id_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,int,scalar_t__,int,scalar_t__) ;
 int svn_fs_x__get_node_revision (TYPE_1__**,int *,int *,int *,int *) ;
 int svn_fs_x__init_rev_root (int *,scalar_t__) ;

__attribute__((used)) static svn_error_t *
validate_root_noderev(svn_fs_t *fs,
                      svn_fs_x__noderev_t *root_noderev,
                      svn_revnum_t rev,
                      apr_pool_t *scratch_pool)
{
  svn_revnum_t head_revnum = rev-1;
  int head_predecessor_count;

  SVN_ERR_ASSERT(rev > 0);


  {
    svn_fs_x__id_t head_root_id;
    svn_fs_x__noderev_t *head_root_noderev;


    svn_fs_x__init_rev_root(&head_root_id, head_revnum);
    SVN_ERR(svn_fs_x__get_node_revision(&head_root_noderev, fs,
                                        &head_root_id, scratch_pool,
                                        scratch_pool));

    head_predecessor_count = head_root_noderev->predecessor_count;
  }
  if ((root_noderev->predecessor_count - head_predecessor_count)
      != (rev - head_revnum))
    {
      return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                               _("predecessor count for "
                                 "the root node-revision is wrong: "
                                 "found (%d+%ld != %d), committing r%ld"),
                                 head_predecessor_count,
                                 rev - head_revnum,
                                 root_noderev->predecessor_count,
                                 rev);
    }

  return SVN_NO_ERROR;
}
