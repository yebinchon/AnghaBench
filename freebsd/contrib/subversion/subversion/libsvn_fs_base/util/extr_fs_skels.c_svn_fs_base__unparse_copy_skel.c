
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int * data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
struct TYPE_6__ {char* src_txn_id; char* src_path; scalar_t__ kind; int dst_noderev_id; } ;
typedef TYPE_2__ copy_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 scalar_t__ copy_kind_real ;
 int is_valid_copy_skel (int *) ;
 int * skel_err (char*) ;
 TYPE_1__* svn_fs_base__id_unparse (int ,int *) ;
 int * svn_skel__make_empty_list (int *) ;
 int svn_skel__mem_atom (int *,int ,int *) ;
 int svn_skel__prepend (int ,int *) ;
 int svn_skel__str_atom (char*,int *) ;

svn_error_t *
svn_fs_base__unparse_copy_skel(svn_skel_t **skel_p,
                               const copy_t *copy,
                               apr_pool_t *pool)
{
  svn_skel_t *skel;
  svn_string_t *tmp_str;


  skel = svn_skel__make_empty_list(pool);


  tmp_str = svn_fs_base__id_unparse(copy->dst_noderev_id, pool);
  svn_skel__prepend(svn_skel__mem_atom(tmp_str->data, tmp_str->len, pool),
                    skel);


  if ((copy->src_txn_id) && (*copy->src_txn_id))
    svn_skel__prepend(svn_skel__str_atom(copy->src_txn_id, pool), skel);
  else
    svn_skel__prepend(svn_skel__mem_atom(((void*)0), 0, pool), skel);


  if ((copy->src_path) && (*copy->src_path))
    svn_skel__prepend(svn_skel__str_atom(copy->src_path, pool), skel);
  else
    svn_skel__prepend(svn_skel__mem_atom(((void*)0), 0, pool), skel);


  if (copy->kind == copy_kind_real)
    svn_skel__prepend(svn_skel__str_atom("copy", pool), skel);
  else
    svn_skel__prepend(svn_skel__str_atom("soft-copy", pool), skel);


  if (! is_valid_copy_skel(skel))
    return skel_err("copy");
  *skel_p = skel;
  return SVN_NO_ERROR;
}
