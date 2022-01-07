
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_skel_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * parse (char const*,int ,int *) ;

svn_skel_t *
svn_skel__parse(const char *data,
                apr_size_t len,
                apr_pool_t *pool)
{
  return parse(data, len, pool);
}
