
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int blocksize; char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int apr_size_t ;


 int svn_stringbuf_appendbytes (TYPE_1__*,char*,int) ;

void
svn_stringbuf_appendbyte(svn_stringbuf_t *str, char byte)
{
  char *dest;
  apr_size_t old_len = str->len;





  if (str->blocksize > old_len + 1)
    {






      str->len = old_len+1;






      dest = str->data;
      dest[old_len] = byte;
      dest[old_len+1] = '\0';
    }
  else
    {
      char b = byte;
      svn_stringbuf_appendbytes(str, &b, 1);
    }
}
