
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int len; int data; } ;
typedef TYPE_3__ svn_stringbuf_t ;
struct TYPE_14__ {int len; int data; } ;
typedef TYPE_4__ svn_string_t ;
typedef int svn_repos_t ;
typedef int svn_fs_txn_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_11__ {int number; } ;
struct TYPE_12__ {TYPE_1__ value; } ;
struct svnadmin_opt_state {int use_post_revprop_change_hook; int use_pre_revprop_change_hook; TYPE_2__ start_revision; scalar_t__ txn_id; int repository_path; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int open_repos (int **,int ,struct svnadmin_opt_state*,int *) ;
 int svn_fs_change_txn_prop (int *,char const*,TYPE_4__*,int *) ;
 int svn_fs_open_txn (int **,int *,scalar_t__,int *) ;
 int * svn_repos_fs (int *) ;
 int svn_repos_fs_change_rev_prop4 (int *,int ,int *,char const*,int *,TYPE_4__*,int ,int ,int *,int *,int *) ;
 TYPE_4__* svn_string_create_empty (int *) ;
 int svn_stringbuf_from_file2 (TYPE_3__**,char const*,int *) ;
 int svn_subst_translate_string2 (TYPE_4__**,int *,int *,TYPE_4__*,int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
set_revprop(const char *prop_name, const char *filename,
            struct svnadmin_opt_state *opt_state, apr_pool_t *pool)
{
  svn_repos_t *repos;
  svn_string_t *prop_value;

  if (filename)
    {
      svn_stringbuf_t *file_contents;

      SVN_ERR(svn_stringbuf_from_file2(&file_contents, filename, pool));

      prop_value = svn_string_create_empty(pool);
      prop_value->data = file_contents->data;
      prop_value->len = file_contents->len;

      SVN_ERR(svn_subst_translate_string2(&prop_value, ((void*)0), ((void*)0), prop_value,
                                          ((void*)0), FALSE, pool, pool));
    }
  else
    {
      prop_value = ((void*)0);
    }


  SVN_ERR(open_repos(&repos, opt_state->repository_path, opt_state, pool));

  if (opt_state->txn_id)
    {
      svn_fs_t *fs = svn_repos_fs(repos);
      svn_fs_txn_t *txn;

      SVN_ERR(svn_fs_open_txn(&txn, fs, opt_state->txn_id, pool));
      SVN_ERR(svn_fs_change_txn_prop(txn, prop_name, prop_value, pool));
    }
  else
    SVN_ERR(svn_repos_fs_change_rev_prop4(
              repos, opt_state->start_revision.value.number,
              ((void*)0), prop_name, ((void*)0), prop_value,
              opt_state->use_pre_revprop_change_hook,
              opt_state->use_post_revprop_change_hook,
              ((void*)0), ((void*)0), pool));

  return SVN_NO_ERROR;
}
