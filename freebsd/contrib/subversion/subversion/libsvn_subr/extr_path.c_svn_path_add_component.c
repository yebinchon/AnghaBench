
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* data; int len; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int dirsep ;
typedef int apr_size_t ;


 int SVN_PATH_IS_EMPTY (char const*) ;
 int assert (int ) ;
 int is_canonical (char const*,int) ;
 int strlen (char const*) ;
 int svn_stringbuf_appendbytes (TYPE_1__*,char const*,int) ;

void
svn_path_add_component(svn_stringbuf_t *path,
                       const char *component)
{
  apr_size_t len = strlen(component);

  assert(is_canonical(path->data, path->len));
  assert(is_canonical(component, strlen(component)));



  if ((! SVN_PATH_IS_EMPTY(path->data))
      && (! ((path->len == 1) && (*(path->data) == '/'))))
    {
      char dirsep = '/';
      svn_stringbuf_appendbytes(path, &dirsep, sizeof(dirsep));
    }

  svn_stringbuf_appendbytes(path, component, len);
}
