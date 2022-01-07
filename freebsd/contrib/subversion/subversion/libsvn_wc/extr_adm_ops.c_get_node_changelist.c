
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_node_kind_t ;
typedef int svn_error_t ;
struct get_cl_fn_baton {int callback_baton; int (* callback_func ) (int ,char const*,char const*,int *) ;int clhash; int db; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,char const*,char const*,int *) ;
 int * svn_hash_gets (int ,char const*) ;
 int svn_wc__db_read_info (int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const**,int *,int *,int *,int *,int *,int *,int *,int ,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
get_node_changelist(const char *local_abspath,
                    svn_node_kind_t kind,
                    void *baton,
                    apr_pool_t *scratch_pool)
{
  struct get_cl_fn_baton *b = baton;
  const char *changelist;

  SVN_ERR(svn_wc__db_read_info(((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), &changelist,
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               b->db, local_abspath,
                               scratch_pool, scratch_pool));
  if (!b->clhash
      || (changelist && svn_hash_gets(b->clhash, changelist) != ((void*)0)))
    SVN_ERR(b->callback_func(b->callback_baton, local_abspath,
                             changelist, scratch_pool));

  return SVN_NO_ERROR;
}
