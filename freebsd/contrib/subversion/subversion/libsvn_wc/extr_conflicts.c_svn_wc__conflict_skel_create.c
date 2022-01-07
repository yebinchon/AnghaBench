
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_skel_t ;
typedef int apr_pool_t ;


 int * svn_skel__make_empty_list (int *) ;
 int svn_skel__prepend (int *,int *) ;

svn_skel_t *
svn_wc__conflict_skel_create(apr_pool_t *result_pool)
{
  svn_skel_t *conflict_skel = svn_skel__make_empty_list(result_pool);


  svn_skel__prepend(svn_skel__make_empty_list(result_pool), conflict_skel);


  svn_skel__prepend(svn_skel__make_empty_list(result_pool), conflict_skel);

  return conflict_skel;
}
