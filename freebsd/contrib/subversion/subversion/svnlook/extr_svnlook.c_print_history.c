
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_root_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct print_history_baton {scalar_t__ limit; scalar_t__ count; int fs; scalar_t__ show_ids; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_CEASE_INVOCATION ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int check_cancel (int *) ;
 int svn_cmdline_printf (int *,char*,int ,char const*,...) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_node_id (int const**,int *,char const*,int *) ;
 int svn_fs_revision_root (int **,int ,int ,int *) ;
 TYPE_1__* svn_fs_unparse_id (int const*,int *) ;

__attribute__((used)) static svn_error_t *
print_history(void *baton,
              const char *path,
              svn_revnum_t revision,
              apr_pool_t *pool)
{
  struct print_history_baton *phb = baton;

  SVN_ERR(check_cancel(((void*)0)));

  if (phb->show_ids)
    {
      const svn_fs_id_t *node_id;
      svn_fs_root_t *rev_root;
      svn_string_t *id_string;

      SVN_ERR(svn_fs_revision_root(&rev_root, phb->fs, revision, pool));
      SVN_ERR(svn_fs_node_id(&node_id, rev_root, path, pool));
      id_string = svn_fs_unparse_id(node_id, pool);
      SVN_ERR(svn_cmdline_printf(pool, "%8ld   %s <%s>\n",
                                 revision, path, id_string->data));
    }
  else
    {
      SVN_ERR(svn_cmdline_printf(pool, "%8ld   %s\n", revision, path));
    }

  if (phb->limit > 0)
    {
      phb->count++;
      if (phb->count >= phb->limit)

        return svn_error_create(SVN_ERR_CEASE_INVOCATION, ((void*)0),
                                _("History item limit reached"));
    }

  return SVN_NO_ERROR;
}
