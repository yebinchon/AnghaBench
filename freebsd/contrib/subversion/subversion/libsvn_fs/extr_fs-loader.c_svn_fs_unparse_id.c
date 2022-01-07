
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_id_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int * (* unparse ) (TYPE_2__ const*,int *) ;} ;


 int * stub1 (TYPE_2__ const*,int *) ;

svn_string_t *
svn_fs_unparse_id(const svn_fs_id_t *id, apr_pool_t *pool)
{
  return id->vtable->unparse(id, pool);
}
