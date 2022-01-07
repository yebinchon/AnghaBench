
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int ** s_roots; int pool; TYPE_1__* repos; } ;
typedef TYPE_2__ report_baton_t ;
struct TYPE_4__ {int fs; } ;


 int NUM_CACHED_SOURCE_ROOTS ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_close_root (int *) ;
 int svn_fs_revision_root (int **,int ,scalar_t__,int ) ;
 scalar_t__ svn_fs_revision_root_revision (int *) ;

__attribute__((used)) static svn_error_t *
get_source_root(report_baton_t *b, svn_fs_root_t **s_root, svn_revnum_t rev)
{
  int i;
  svn_fs_root_t *root, *prev = ((void*)0);



  for (i = 0; i < NUM_CACHED_SOURCE_ROOTS; i++)
    {
      root = b->s_roots[i];
      b->s_roots[i] = prev;
      if (root && svn_fs_revision_root_revision(root) == rev)
        break;
      prev = root;
    }


  if (i == NUM_CACHED_SOURCE_ROOTS)
    {
      if (prev)
        svn_fs_close_root(prev);
      SVN_ERR(svn_fs_revision_root(&root, b->repos->fs, rev, b->pool));
    }


  b->s_roots[0] = root;
  *s_root = root;
  return SVN_NO_ERROR;
}
