
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_skel_t ;
typedef int svn_error_t ;
struct TYPE_3__ {char* txn_id; } ;
typedef TYPE_1__ revision_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int is_valid_revision_skel (int *) ;
 int * skel_err (char*) ;
 int * svn_skel__make_empty_list (int *) ;
 int svn_skel__prepend (int ,int *) ;
 int svn_skel__str_atom (char*,int *) ;

svn_error_t *
svn_fs_base__unparse_revision_skel(svn_skel_t **skel_p,
                                   const revision_t *revision,
                                   apr_pool_t *pool)
{
  svn_skel_t *skel;


  skel = svn_skel__make_empty_list(pool);


  svn_skel__prepend(svn_skel__str_atom(revision->txn_id, pool), skel);


  svn_skel__prepend(svn_skel__str_atom("revision", pool), skel);


  if (! is_valid_revision_skel(skel))
    return skel_err("revision");
  *skel_p = skel;
  return SVN_NO_ERROR;
}
