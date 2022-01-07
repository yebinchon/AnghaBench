
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int (* close_edit ) (void*,int *) ;} ;
typedef TYPE_1__ svn_delta_editor_t ;
struct replay_baton {int quiet; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stderr ;
 int stub1 (void*,int *) ;
 int svn_cmdline_fprintf (int ,int *,char*,int ) ;

__attribute__((used)) static svn_error_t *
replay_revend(svn_revnum_t revision,
              void *replay_baton,
              const svn_delta_editor_t *editor,
              void *edit_baton,
              apr_hash_t *rev_props,
              apr_pool_t *pool)
{

  struct replay_baton *rb = replay_baton;

  SVN_ERR(editor->close_edit(edit_baton, pool));

  if (! rb->quiet)
    SVN_ERR(svn_cmdline_fprintf(stderr, pool, "* Dumped revision %lu.\n",
                                revision));
  return SVN_NO_ERROR;
}
