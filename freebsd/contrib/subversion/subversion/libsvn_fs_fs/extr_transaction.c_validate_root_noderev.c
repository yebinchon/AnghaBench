
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int predecessor_count; } ;
typedef TYPE_1__ node_revision_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,int,scalar_t__,int,scalar_t__) ;
 int svn_fs_fs__get_node_revision (TYPE_1__**,int *,int const*,int *,int *) ;
 int svn_fs_fs__node_id (int const**,int *,char*,int *) ;
 int svn_fs_fs__revision_root (int **,int *,scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
validate_root_noderev(svn_fs_t *fs,
                      node_revision_t *root_noderev,
                      svn_revnum_t rev,
                      apr_pool_t *pool)
{
  svn_revnum_t head_revnum = rev-1;
  int head_predecessor_count;

  SVN_ERR_ASSERT(rev > 0);


  {
    svn_fs_root_t *head_revision;
    const svn_fs_id_t *head_root_id;
    node_revision_t *head_root_noderev;


    SVN_ERR(svn_fs_fs__revision_root(&head_revision, fs, head_revnum, pool));
    SVN_ERR(svn_fs_fs__node_id(&head_root_id, head_revision, "/", pool));
    SVN_ERR(svn_fs_fs__get_node_revision(&head_root_noderev, fs, head_root_id,
                                         pool, pool));
    head_predecessor_count = head_root_noderev->predecessor_count;
  }
  if ( (root_noderev->predecessor_count - head_predecessor_count)
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
