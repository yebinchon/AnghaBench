
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_delta_path_driver_cb_func_t ;
typedef int svn_delta_editor_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int TRUE ;
 int svn_delta_path_driver2 (int const*,void*,int const*,int ,int ,void*,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_delta_path_driver(const svn_delta_editor_t *editor,
                      void *edit_baton,
                      svn_revnum_t revision,
                      const apr_array_header_t *paths,
                      svn_delta_path_driver_cb_func_t callback_func,
                      void *callback_baton,
                      apr_pool_t *scratch_pool)
{


  return svn_error_trace(svn_delta_path_driver2(editor, edit_baton, paths,
                                                TRUE,
                                                callback_func, callback_baton,
                                                scratch_pool));
}
