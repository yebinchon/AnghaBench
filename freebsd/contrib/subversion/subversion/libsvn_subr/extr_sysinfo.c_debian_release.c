
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int apr_pool_t ;


 int SVN_VA_NULL ;
 char const* apr_pstrcat (int *,char*,int ,int ) ;
 TYPE_1__* read_file_contents (char*,int *) ;
 int stringbuf_first_line_only (TYPE_1__*) ;

__attribute__((used)) static const char *
debian_release(apr_pool_t *pool)
{
  svn_stringbuf_t *buffer = read_file_contents("/etc/debian_version", pool);
  if (!buffer)
      return ((void*)0);

  stringbuf_first_line_only(buffer);
  return apr_pstrcat(pool, "Debian ", buffer->data, SVN_VA_NULL);
}
