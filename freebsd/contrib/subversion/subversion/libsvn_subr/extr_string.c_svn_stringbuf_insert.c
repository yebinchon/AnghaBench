
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* data; int blocksize; scalar_t__ len; int pool; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef scalar_t__ apr_size_t ;


 char* apr_pmemdup (int ,char const*,scalar_t__) ;
 int memcpy (char const*,char const*,scalar_t__) ;
 int memmove (char const*,char const*,scalar_t__) ;
 int svn_stringbuf_ensure (TYPE_1__*,scalar_t__) ;

void
svn_stringbuf_insert(svn_stringbuf_t *str,
                     apr_size_t pos,
                     const char *bytes,
                     apr_size_t count)
{

  if (count == 0)
    return;


  if (bytes + count > str->data && bytes < str->data + str->blocksize)
    bytes = apr_pmemdup(str->pool, bytes, count);

  if (pos > str->len)
    pos = str->len;

  svn_stringbuf_ensure(str, str->len + count);
  memmove(str->data + pos + count, str->data + pos, str->len - pos + 1);
  memcpy(str->data + pos, bytes, count);

  str->len += count;
}
