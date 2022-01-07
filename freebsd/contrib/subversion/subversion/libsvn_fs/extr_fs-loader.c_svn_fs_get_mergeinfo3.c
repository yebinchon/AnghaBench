
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_mergeinfo_inheritance_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_fs_mergeinfo_receiver_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;
struct TYPE_5__ {int (* get_mergeinfo ) (TYPE_2__*,int const*,int ,int ,int ,int ,void*,int *) ;} ;


 int stub1 (TYPE_2__*,int const*,int ,int ,int ,int ,void*,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_get_mergeinfo3(svn_fs_root_t *root,
                      const apr_array_header_t *paths,
                      svn_mergeinfo_inheritance_t inherit,
                      svn_boolean_t include_descendants,
                      svn_boolean_t adjust_inherited_mergeinfo,
                      svn_fs_mergeinfo_receiver_t receiver,
                      void *baton,
                      apr_pool_t *scratch_pool)
{
  return svn_error_trace(root->vtable->get_mergeinfo(
    root, paths, inherit, include_descendants, adjust_inherited_mergeinfo,
    receiver, baton, scratch_pool));
}
