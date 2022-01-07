
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_7__ {int (* close_edit ) (void*,int ) ;int (* close_directory ) (void*,int ) ;int (* open_root ) (void*,scalar_t__,int ,void**) ;} ;
typedef TYPE_3__ svn_delta_editor_t ;
struct revision_baton {scalar_t__ rev; int rev_offset; int pool; int author; TYPE_2__* pb; int datestamp; int revprop_table; TYPE_1__* db; } ;
struct TYPE_6__ {int session; int skip_revprops; int rev_map; int quiet; void* commit_edit_baton; TYPE_3__* commit_editor; } ;
struct TYPE_5__ {void* baton; struct TYPE_5__* parent; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_AUTHOR ;
 int SVN_PROP_REVISION_DATE ;
 int commit_callback ;
 scalar_t__ get_revision_mapping (int ,scalar_t__) ;
 int stub1 (void*,int ) ;
 int stub2 (void*,int ) ;
 int stub3 (void*,int ) ;
 int stub4 (void*,scalar_t__,int ,void**) ;
 int stub5 (void*,int ) ;
 int stub6 (void*,int ) ;
 int svn_cmdline_printf (int ,char*) ;
 int svn_hash_gets (int ,int ) ;
 int svn_pool_destroy (int ) ;
 int svn_ra_change_rev_prop2 (int ,scalar_t__,int ,int *,int ,int ) ;
 int svn_ra_get_commit_editor3 (int ,TYPE_3__ const**,void**,int ,int ,void*,int *,int ,int ) ;
 int svn_repos__validate_prop (int ,int ,int ) ;

__attribute__((used)) static svn_error_t *
close_revision(void *baton)
{
  struct revision_baton *rb = baton;
  const svn_delta_editor_t *commit_editor = rb->pb->commit_editor;
  void *commit_edit_baton = rb->pb->commit_edit_baton;
  svn_revnum_t committed_rev = SVN_INVALID_REVNUM;


  if (rb->rev == 0)
    {

      if (! rb->pb->quiet)
        SVN_ERR(svn_cmdline_printf(rb->pool, "* Loaded revision 0.\n"));
    }
  else if (commit_editor)
    {


      while (rb->db && rb->db->parent)
        {
          SVN_ERR(commit_editor->close_directory(rb->db->baton, rb->pool));
          rb->db = rb->db->parent;
        }

      SVN_ERR(commit_editor->close_directory(rb->db->baton, rb->pool));
      SVN_ERR(commit_editor->close_edit(commit_edit_baton, rb->pool));
    }
  else
    {
      svn_revnum_t head_rev_before_commit = rb->rev - rb->rev_offset - 1;
      void *child_baton;


      SVN_ERR(svn_ra_get_commit_editor3(rb->pb->session, &commit_editor,
                                        &commit_edit_baton, rb->revprop_table,
                                        commit_callback, baton,
                                        ((void*)0), FALSE, rb->pool));

      SVN_ERR(commit_editor->open_root(commit_edit_baton,
                                       head_rev_before_commit,
                                       rb->pool, &child_baton));

      SVN_ERR(commit_editor->close_directory(child_baton, rb->pool));
      SVN_ERR(commit_editor->close_edit(commit_edit_baton, rb->pool));
    }





  if (rb->rev > 0)
    {
      committed_rev = get_revision_mapping(rb->pb->rev_map, rb->rev);
    }
  else if (rb->rev_offset == -1)
    {
      committed_rev = 0;
    }

  if (SVN_IS_VALID_REVNUM(committed_rev))
    {
      if (!svn_hash_gets(rb->pb->skip_revprops, SVN_PROP_REVISION_DATE))
        {
          SVN_ERR(svn_repos__validate_prop(SVN_PROP_REVISION_DATE,
                                           rb->datestamp, rb->pool));
          SVN_ERR(svn_ra_change_rev_prop2(rb->pb->session, committed_rev,
                                          SVN_PROP_REVISION_DATE,
                                          ((void*)0), rb->datestamp, rb->pool));
        }
      if (!svn_hash_gets(rb->pb->skip_revprops, SVN_PROP_REVISION_AUTHOR))
        {
          SVN_ERR(svn_repos__validate_prop(SVN_PROP_REVISION_AUTHOR,
                                           rb->author, rb->pool));
          SVN_ERR(svn_ra_change_rev_prop2(rb->pb->session, committed_rev,
                                          SVN_PROP_REVISION_AUTHOR,
                                          ((void*)0), rb->author, rb->pool));
        }
    }

  svn_pool_destroy(rb->pool);

  return SVN_NO_ERROR;
}
