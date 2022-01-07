
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; int len; int blocksize; } ;
typedef TYPE_1__ svn_stringbuf_t ;


 char* strchr (char*,char) ;
 int svn_stringbuf_strip_whitespace (TYPE_1__*) ;

__attribute__((used)) static const char *
stringbuf_split_key(svn_stringbuf_t *buffer, char delim)
{
  char *key;
  char *end;

  end = strchr(buffer->data, delim);
  if (!end)
    return ((void*)0);

  svn_stringbuf_strip_whitespace(buffer);






  key = buffer->data;
  end = strchr(key, delim);
  *end = '\0';


  buffer->data = end + 1;
  buffer->len -= 1 + end - key;
  buffer->blocksize -= 1 + end - key;

  svn_stringbuf_strip_whitespace(buffer);

  return key;
}
