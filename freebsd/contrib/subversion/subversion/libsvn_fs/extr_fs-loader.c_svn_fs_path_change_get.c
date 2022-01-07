
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_path_change_iterator_t ;
typedef int svn_fs_path_change3_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int * (* get ) (int **,TYPE_2__*) ;} ;


 int * stub1 (int **,TYPE_2__*) ;

svn_error_t *
svn_fs_path_change_get(svn_fs_path_change3_t **change,
                       svn_fs_path_change_iterator_t *iterator)
{
  return iterator->vtable->get(change, iterator);
}
