
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
struct TYPE_5__ {int stream; int file; } ;
typedef TYPE_1__ svn_fs_fs__revision_file_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int id; } ;
typedef TYPE_2__ node_revision_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int aligned_seek (int *,int ,int *,int ,int *) ;
 int assert (int) ;
 int * svn_fs_fs__id_copy (int ,int *) ;
 scalar_t__ svn_fs_fs__id_rev (int *) ;
 int svn_fs_fs__read_noderev (TYPE_2__**,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
get_fs_id_at_offset(svn_fs_id_t **id_p,
                    svn_fs_fs__revision_file_t *rev_file,
                    svn_fs_t *fs,
                    svn_revnum_t rev,
                    apr_off_t offset,
                    apr_pool_t *pool)
{
  node_revision_t *noderev;

  SVN_ERR(aligned_seek(fs, rev_file->file, ((void*)0), offset, pool));
  SVN_ERR(svn_fs_fs__read_noderev(&noderev,
                                  rev_file->stream,
                                  pool, pool));


  *id_p = svn_fs_fs__id_copy(noderev->id, pool);




  assert(svn_fs_fs__id_rev(*id_p) == rev);

  return SVN_NO_ERROR;
}
