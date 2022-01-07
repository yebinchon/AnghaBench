
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_skel_t ;
typedef int apr_pool_t ;


 int svn_skel__prepend (int *,int *) ;
 int * svn_skel__str_atom (char const*,int *) ;

void svn_skel__prepend_str(const char *value,
                           svn_skel_t *skel,
                           apr_pool_t *result_pool)
{
  svn_skel_t *atom = svn_skel__str_atom(value, result_pool);

  svn_skel__prepend(atom, skel);
}
