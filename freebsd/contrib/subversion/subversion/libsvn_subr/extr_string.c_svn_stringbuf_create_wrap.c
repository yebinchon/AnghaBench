
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; scalar_t__ len; scalar_t__ blocksize; int * pool; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 scalar_t__ strlen (char*) ;

svn_stringbuf_t *
svn_stringbuf_create_wrap(char *str, apr_pool_t *pool)
{
  svn_stringbuf_t *result = apr_palloc(pool, sizeof(*result));
  result->pool = pool;
  result->data = str;
  result->len = strlen(str);
  result->blocksize = result->len + 1;

  return result;
}
