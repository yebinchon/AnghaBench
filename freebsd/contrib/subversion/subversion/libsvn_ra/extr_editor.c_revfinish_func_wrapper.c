
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
struct wrapped_replay_baton_t {int editor; int (* revfinish_func ) (int ,void*,int ,int *,int *) ;} ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,void*,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
revfinish_func_wrapper(svn_revnum_t revision,
                       void *replay_baton,
                       const svn_delta_editor_t *editor,
                       void *edit_baton,
                       apr_hash_t *rev_props,
                       apr_pool_t *pool)
{
  struct wrapped_replay_baton_t *wrb = replay_baton;

  SVN_ERR(wrb->revfinish_func(revision, replay_baton, wrb->editor, rev_props,
                              pool));

  return SVN_NO_ERROR;
}
