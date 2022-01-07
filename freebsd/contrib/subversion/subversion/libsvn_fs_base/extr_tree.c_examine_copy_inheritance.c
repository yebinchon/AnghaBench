
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_6__ {scalar_t__ copy_inherit; struct TYPE_6__* parent; int node; } ;
typedef TYPE_1__ parent_path_t ;
struct TYPE_7__ {scalar_t__ kind; } ;
typedef TYPE_2__ copy_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ copy_id_inherit_self ;
 scalar_t__ copy_kind_soft ;
 int svn_fs_base__dag_get_id (int ) ;
 char* svn_fs_base__id_copy_id (int ) ;
 int svn_fs_bdb__get_copy (TYPE_2__**,int *,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
examine_copy_inheritance(const char **copy_id,
                         copy_t **copy,
                         svn_fs_t *fs,
                         parent_path_t *parent_path,
                         trail_t *trail,
                         apr_pool_t *pool)
{

  *copy_id = svn_fs_base__id_copy_id
    (svn_fs_base__dag_get_id(parent_path->node));
  *copy = ((void*)0);



  if (! parent_path->parent)
    return SVN_NO_ERROR;




  if (parent_path->copy_inherit == copy_id_inherit_self)
    {


      if (((*copy_id)[0] == '0') && ((*copy_id)[1] == '\0'))
        return SVN_NO_ERROR;




      SVN_ERR(svn_fs_bdb__get_copy(copy, fs, *copy_id, trail, pool));
      if ((*copy)->kind != copy_kind_soft)
        return SVN_NO_ERROR;
    }


  return examine_copy_inheritance(copy_id, copy, fs,
                                  parent_path->parent, trail, pool);
}
