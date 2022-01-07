
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* data; int blocksize; scalar_t__ len; int pool; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef scalar_t__ apr_size_t ;


 char* apr_pmemdup (int ,char const*,scalar_t__) ;
 int memcpy (char const*,char const*,scalar_t__) ;
 int memmove (char const*,char const*,scalar_t__) ;
 int svn_stringbuf_ensure (TYPE_1__*,scalar_t__) ;
 int svn_stringbuf_remove (TYPE_1__*,scalar_t__,scalar_t__) ;

void
svn_stringbuf_replace(svn_stringbuf_t *str,
                      apr_size_t pos,
                      apr_size_t old_count,
                      const char *bytes,
                      apr_size_t new_count)
{


  if (new_count == 0)
    {
      svn_stringbuf_remove(str, pos, old_count);
      return;
    }


  if (bytes + new_count > str->data && bytes < str->data + str->blocksize)
    bytes = apr_pmemdup(str->pool, bytes, new_count);

  if (pos > str->len)
    pos = str->len;
  if (old_count > str->len - pos)
    old_count = str->len - pos;

  if (old_count < new_count)
    {
      apr_size_t delta = new_count - old_count;
      svn_stringbuf_ensure(str, str->len + delta);
    }

  if (old_count != new_count)
    memmove(str->data + pos + new_count, str->data + pos + old_count,
            str->len - pos - old_count + 1);

  memcpy(str->data + pos, bytes, new_count);
  str->len += new_count - old_count;
}
