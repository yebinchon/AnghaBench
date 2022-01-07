
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_skel_t ;
struct TYPE_3__ {char* comment; char* owner; char* token; char* path; scalar_t__ is_dav_comment; scalar_t__ creation_date; scalar_t__ expiration_date; } ;
typedef TYPE_1__ svn_lock_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int is_valid_lock_skel (int *) ;
 int * skel_err (char*) ;
 int * svn_skel__make_empty_list (int *) ;
 int svn_skel__mem_atom (int *,int ,int *) ;
 int svn_skel__prepend (int ,int *) ;
 int svn_skel__str_atom (char*,int *) ;
 char* svn_time_to_cstring (scalar_t__,int *) ;

svn_error_t *
svn_fs_base__unparse_lock_skel(svn_skel_t **skel_p,
                               const svn_lock_t *lock,
                               apr_pool_t *pool)
{
  svn_skel_t *skel;


  skel = svn_skel__make_empty_list(pool);


  if (lock->expiration_date)
    svn_skel__prepend(svn_skel__str_atom(
                          svn_time_to_cstring(lock->expiration_date, pool),
                          pool), skel);
  else
    svn_skel__prepend(svn_skel__mem_atom(((void*)0), 0, pool), skel);


  svn_skel__prepend(svn_skel__str_atom(
                        svn_time_to_cstring(lock->creation_date, pool),
                        pool), skel);


  if (lock->is_dav_comment)
    svn_skel__prepend(svn_skel__str_atom("1", pool), skel);
  else
    svn_skel__prepend(svn_skel__str_atom("0", pool), skel);


  if (lock->comment)
    svn_skel__prepend(svn_skel__str_atom(lock->comment, pool), skel);
  else
    svn_skel__prepend(svn_skel__mem_atom(((void*)0), 0, pool), skel);


  svn_skel__prepend(svn_skel__str_atom(lock->owner, pool), skel);


  svn_skel__prepend(svn_skel__str_atom(lock->token, pool), skel);


  svn_skel__prepend(svn_skel__str_atom(lock->path, pool), skel);


  svn_skel__prepend(svn_skel__str_atom("lock", pool), skel);


  if (! is_valid_lock_skel(skel))
    return skel_err("lock");

  *skel_p = skel;
  return SVN_NO_ERROR;
}
