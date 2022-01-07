
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; char* len; } ;
typedef TYPE_1__ svn_stringbuf_t ;


 char* strchr (int,char) ;
 int svn_stringbuf_strip_whitespace (TYPE_1__*) ;

__attribute__((used)) static void
stringbuf_first_line_only(svn_stringbuf_t *buffer)
{
  char *eol = strchr(buffer->data, '\n');
  if (eol)
    {
      *eol = '\0';
      buffer->len = 1 + eol - buffer->data;
    }
  svn_stringbuf_strip_whitespace(buffer);
}
