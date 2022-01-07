
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
struct replay_baton {int extra_ra_session; int stdout_stream; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int check_cancel ;
 int svn_rdump__get_dump_editor (int const**,void**,int ,int ,int ,int *,int ,int *,int *) ;
 int svn_rdump__normalize_props (int **,int *,int *) ;
 int svn_repos__dump_revision_record (int ,int ,int *,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
replay_revstart(svn_revnum_t revision,
                void *replay_baton,
                const svn_delta_editor_t **editor,
                void **edit_baton,
                apr_hash_t *rev_props,
                apr_pool_t *pool)
{
  struct replay_baton *rb = replay_baton;
  apr_hash_t *normal_props;


  SVN_ERR(svn_rdump__normalize_props(&normal_props, rev_props, pool));
  SVN_ERR(svn_repos__dump_revision_record(rb->stdout_stream, revision, ((void*)0),
                                          normal_props,
                                          TRUE ,
                                          pool));

  SVN_ERR(svn_rdump__get_dump_editor(editor, edit_baton, revision,
                                     rb->stdout_stream, rb->extra_ra_session,
                                     ((void*)0), check_cancel, ((void*)0), pool));

  return SVN_NO_ERROR;
}
