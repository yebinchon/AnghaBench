
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; scalar_t__ data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef scalar_t__ apr_size_t ;


 int memmove (scalar_t__,scalar_t__,scalar_t__) ;

void
svn_stringbuf_remove(svn_stringbuf_t *str,
                     apr_size_t pos,
                     apr_size_t count)
{
  if (pos > str->len)
    pos = str->len;
  if (count > str->len - pos)
    count = str->len - pos;

  memmove(str->data + pos, str->data + pos + count, str->len - pos - count + 1);
  str->len -= count;
}
