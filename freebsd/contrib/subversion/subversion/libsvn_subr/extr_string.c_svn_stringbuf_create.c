
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int apr_pool_t ;


 int strlen (char const*) ;
 int * svn_stringbuf_ncreate (char const*,int ,int *) ;

svn_stringbuf_t *
svn_stringbuf_create(const char *cstring, apr_pool_t *pool)
{
  return svn_stringbuf_ncreate(cstring, strlen(cstring), pool);
}
