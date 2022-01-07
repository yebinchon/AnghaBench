
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int * data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_skel_t ;
typedef int svn_fs_path_change_kind_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int kind; char* path; scalar_t__ noderev_id; scalar_t__ text_mod; scalar_t__ prop_mod; } ;
typedef TYPE_2__ change_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int is_valid_change_skel (int *,int*) ;
 int * skel_err (char*) ;
 TYPE_1__* svn_fs_base__id_unparse (scalar_t__,int *) ;





 int * svn_skel__make_empty_list (int *) ;
 int svn_skel__mem_atom (int *,int ,int *) ;
 int svn_skel__prepend (int ,int *) ;
 int svn_skel__str_atom (char*,int *) ;

svn_error_t *
svn_fs_base__unparse_change_skel(svn_skel_t **skel_p,
                                 const change_t *change,
                                 apr_pool_t *pool)
{
  svn_skel_t *skel;
  svn_string_t *tmp_str;
  svn_fs_path_change_kind_t kind;


  skel = svn_skel__make_empty_list(pool);


  if (change->prop_mod)
    svn_skel__prepend(svn_skel__str_atom("1", pool), skel);
  else
    svn_skel__prepend(svn_skel__mem_atom(((void*)0), 0, pool), skel);


  if (change->text_mod)
    svn_skel__prepend(svn_skel__str_atom("1", pool), skel);
  else
    svn_skel__prepend(svn_skel__mem_atom(((void*)0), 0, pool), skel);


  switch (change->kind)
    {
    case 128:
      svn_skel__prepend(svn_skel__str_atom("reset", pool), skel);
      break;
    case 132:
      svn_skel__prepend(svn_skel__str_atom("add", pool), skel);
      break;
    case 131:
      svn_skel__prepend(svn_skel__str_atom("delete", pool), skel);
      break;
    case 129:
      svn_skel__prepend(svn_skel__str_atom("replace", pool), skel);
      break;
    case 130:
    default:
      svn_skel__prepend(svn_skel__str_atom("modify", pool), skel);
      break;
    }


  if (change->noderev_id)
    {
      tmp_str = svn_fs_base__id_unparse(change->noderev_id, pool);
      svn_skel__prepend(svn_skel__mem_atom(tmp_str->data, tmp_str->len, pool),
                        skel);
    }
  else
    {
      svn_skel__prepend(svn_skel__mem_atom(((void*)0), 0, pool), skel);
    }


  svn_skel__prepend(svn_skel__str_atom(change->path, pool), skel);


  svn_skel__prepend(svn_skel__str_atom("change", pool), skel);


  if (! is_valid_change_skel(skel, &kind))
    return skel_err("change");
  if (kind != change->kind)
    return skel_err("change");
  *skel_p = skel;
  return SVN_NO_ERROR;
}
