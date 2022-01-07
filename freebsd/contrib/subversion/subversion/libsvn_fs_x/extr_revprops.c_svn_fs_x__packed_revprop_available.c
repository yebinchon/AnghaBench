
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_5__ {int entry; int revision; } ;
typedef TYPE_1__ packed_revprops_t ;
typedef int apr_pool_t ;


 int FALSE ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int get_revprop_pack_filepath (TYPE_1__*,int *,int *) ;
 int * get_revprop_packname (int *,TYPE_1__*,int *,int *) ;
 int svn_error_clear (int *) ;
 int * svn_io_check_path (int ,scalar_t__*,int *) ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;

svn_boolean_t
svn_fs_x__packed_revprop_available(svn_boolean_t *missing,
                                   svn_fs_t *fs,
                                   svn_revnum_t revision,
                                   apr_pool_t *scratch_pool)
{
  svn_node_kind_t kind;
  packed_revprops_t *revprops;
  svn_error_t *err;


  revprops = apr_pcalloc(scratch_pool, sizeof(*revprops));
  revprops->revision = revision;
  err = get_revprop_packname(fs, revprops, scratch_pool, scratch_pool);



  if (err)
    {
      svn_error_clear(err);
      return FALSE;
    }


  err = svn_io_check_path(get_revprop_pack_filepath(revprops,
                                                    &revprops->entry,
                                                    scratch_pool),
                          &kind, scratch_pool);
  if (err)
    {
      svn_error_clear(err);
      return FALSE;
    }

  *missing = kind == svn_node_none;
  return kind == svn_node_file;
}
