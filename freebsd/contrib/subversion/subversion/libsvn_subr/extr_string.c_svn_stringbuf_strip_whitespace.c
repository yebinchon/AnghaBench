
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; int len; int blocksize; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef scalar_t__ apr_size_t ;


 scalar_t__ string_first_non_whitespace (char*,int) ;
 scalar_t__ svn_ctype_isspace (char) ;

void
svn_stringbuf_strip_whitespace(svn_stringbuf_t *str)
{

  if (svn_ctype_isspace(str->data[0]))
    {

      apr_size_t offset = string_first_non_whitespace(str->data + 1,
                                                      str->len - 1) + 1;


      str->data += offset;
      str->len -= offset;
      str->blocksize -= offset;
    }


  while ((str->len > 0) && svn_ctype_isspace(str->data[str->len - 1]))
    str->len--;
  str->data[str->len] = '\0';
}
