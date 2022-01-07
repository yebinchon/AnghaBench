
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; int len; } ;
typedef TYPE_1__ svn_stringbuf_t ;


 int BASE64_LINELEN ;
 int encode_group (unsigned char const*,char*) ;

__attribute__((used)) static void
encode_line(svn_stringbuf_t *str, const char *data)
{

  const unsigned char *in = (const unsigned char *)data;
  char *out = str->data + str->len;
  char *end = out + BASE64_LINELEN;



  for ( ; out != end; in += 3, out += 4)
    encode_group(in, out);


  *out = '\0';
  str->len += BASE64_LINELEN;
}
