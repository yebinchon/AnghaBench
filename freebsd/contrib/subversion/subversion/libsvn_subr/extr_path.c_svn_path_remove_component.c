
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; size_t len; } ;
typedef TYPE_1__ svn_stringbuf_t ;


 int assert (int ) ;
 int is_canonical (char*,size_t) ;
 size_t previous_segment (char*,size_t) ;

void
svn_path_remove_component(svn_stringbuf_t *path)
{
  assert(is_canonical(path->data, path->len));

  path->len = previous_segment(path->data, path->len);
  path->data[path->len] = '\0';
}
