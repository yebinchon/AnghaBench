
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int apr_pool_t ;


 TYPE_1__* read_file_contents (char*,int *) ;
 int stringbuf_first_line_only (TYPE_1__*) ;

__attribute__((used)) static const char *
redhat_release(apr_pool_t *pool)
{
  svn_stringbuf_t *buffer = read_file_contents("/etc/redhat-release", pool);
  if (buffer)
    {
      stringbuf_first_line_only(buffer);
      return buffer->data;
    }
  return ((void*)0);
}
