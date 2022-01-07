
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_skel_t ;
typedef int apr_pool_t ;


 scalar_t__ estimate_unparsed_size (int const*) ;
 int * svn_stringbuf_create_ensure (scalar_t__,int *) ;
 int * unparse (int const*,int *) ;

svn_stringbuf_t *
svn_skel__unparse(const svn_skel_t *skel, apr_pool_t *pool)
{
  svn_stringbuf_t *str
    = svn_stringbuf_create_ensure(estimate_unparsed_size(skel) + 200, pool);

  return unparse(skel, str);
}
