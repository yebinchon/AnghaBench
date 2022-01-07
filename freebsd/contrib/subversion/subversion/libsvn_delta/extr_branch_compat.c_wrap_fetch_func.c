
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fetch_baton; int (* fetch_func ) (int *,int **,int **,int **,int ,char const*,int ,int *,int *) ;} ;
typedef TYPE_1__ wrap_fetch_baton_t ;
typedef int svn_stringbuf_t ;
typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_make (int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int stub1 (int *,int **,int **,int **,int ,char const*,int ,int *,int *) ;
 int svn_node_dir ;

__attribute__((used)) static svn_error_t *
wrap_fetch_func(svn_node_kind_t *kind,
                apr_hash_t **props,
                svn_stringbuf_t **file_text,
                apr_hash_t **children_names,
                void *baton,
                const char *repos_relpath,
                svn_revnum_t revision,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  wrap_fetch_baton_t *b = baton;

  if (revision == 0 && strcmp(repos_relpath, "top0") == 0)
    {
      if (kind)
        *kind = svn_node_dir;
      if (props)
        *props = apr_hash_make(result_pool);
      if (file_text)
        *file_text = ((void*)0);
      if (children_names)
        *children_names = apr_hash_make(result_pool);
    }
  else
    {
      SVN_ERR(b->fetch_func(kind, props, file_text, children_names,
                            b->fetch_baton,
                            repos_relpath, revision,
                            result_pool, scratch_pool));
    }

  return SVN_NO_ERROR;
}
