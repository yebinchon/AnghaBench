
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_4__ {char* data; int * pool; void* blocksize; void* len; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef void* apr_size_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 char* apr_pvsprintf (int *,char const*,int ) ;
 void* strlen (char*) ;

svn_stringbuf_t *
svn_stringbuf_createv(apr_pool_t *pool, const char *fmt, va_list ap)
{
  char *data = apr_pvsprintf(pool, fmt, ap);
  apr_size_t size = strlen(data);
  svn_stringbuf_t *new_string;

  new_string = apr_palloc(pool, sizeof(*new_string));
  new_string->data = data;
  new_string->len = size;
  new_string->blocksize = size + 1;
  new_string->pool = pool;

  return new_string;
}
