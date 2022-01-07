
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef scalar_t__ apr_size_t ;


 int svn_path_remove_component (int *) ;

void
svn_path_remove_components(svn_stringbuf_t *path, apr_size_t n)
{
  while (n > 0)
    {
      svn_path_remove_component(path);
      n--;
    }
}
