
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int apr_size_t ;


 int memcpy (void*,char const*,int) ;
 int svn_stringbuf_ensure (TYPE_1__*,int) ;

void
svn_stringbuf_appendbytes(svn_stringbuf_t *str, const char *bytes,
                          apr_size_t count)
{
  apr_size_t total_len;
  void *start_address;

  if (!count)

    return;

  total_len = str->len + count;


  svn_stringbuf_ensure(str, total_len);


  start_address = (str->data + str->len);

  memcpy(start_address, bytes, count);
  str->len = total_len;

  str->data[str->len] = '\0';


}
