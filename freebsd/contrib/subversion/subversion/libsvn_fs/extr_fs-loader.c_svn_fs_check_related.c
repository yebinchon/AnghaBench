
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_id_t ;
typedef int svn_boolean_t ;
struct TYPE_7__ {scalar_t__ (* compare ) (TYPE_2__ const*,TYPE_2__ const*) ;} ;


 scalar_t__ stub1 (TYPE_2__ const*,TYPE_2__ const*) ;
 scalar_t__ svn_fs_node_unrelated ;

svn_boolean_t
svn_fs_check_related(const svn_fs_id_t *a, const svn_fs_id_t *b)
{
  return (a->vtable->compare(a, b) != svn_fs_node_unrelated);
}
