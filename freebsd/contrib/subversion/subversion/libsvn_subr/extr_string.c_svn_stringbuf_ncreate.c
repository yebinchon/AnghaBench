
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; int len; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int memcpy (char*,char const*,int) ;
 TYPE_1__* svn_stringbuf_create_ensure (int,int *) ;

svn_stringbuf_t *
svn_stringbuf_ncreate(const char *bytes, apr_size_t size, apr_pool_t *pool)
{
  svn_stringbuf_t *strbuf = svn_stringbuf_create_ensure(size, pool);


  if (size)
    memcpy(strbuf->data, bytes, size);




  strbuf->data[size] = '\0';
  strbuf->len = size;

  return strbuf;
}
