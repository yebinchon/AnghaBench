
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int * (* parse_id ) (char const*,int ,int *) ;} ;
typedef TYPE_1__ fs_library_vtable_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int SVN_FS_TYPE_BDB ;
 int * get_library_vtable (TYPE_1__**,int ,int *) ;
 int * stub1 (char const*,int ,int *) ;
 int svn_error_clear (int *) ;

svn_fs_id_t *
svn_fs_parse_id(const char *data, apr_size_t len, apr_pool_t *pool)
{
  fs_library_vtable_t *vtable;
  svn_error_t *err;

  err = get_library_vtable(&vtable, SVN_FS_TYPE_BDB, pool);
  if (err)
    {
      svn_error_clear(err);
      return ((void*)0);
    }
  return vtable->parse_id(data, len, pool);
}
