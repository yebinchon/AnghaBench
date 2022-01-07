
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int apr_pool_t ;


 int * svn_stringbuf_create_ensure (int ,int *) ;

svn_stringbuf_t *
svn_stringbuf_create_empty(apr_pool_t *pool)
{
  return svn_stringbuf_create_ensure(0, pool);
}
