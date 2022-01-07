
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; char* data; int blocksize; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef scalar_t__ apr_size_t ;



void
svn_stringbuf_leftchop(svn_stringbuf_t *str, apr_size_t nbytes)
{
  if (str->len == 0)
    return;

  if (nbytes >= str->len)
    {
      str->len = 0;
      *str->data = '\0';
    }
  else
    {



      str->data += nbytes;
      str->len -= nbytes;
      str->blocksize -= nbytes;
    }
}
