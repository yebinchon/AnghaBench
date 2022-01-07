
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inner_stream; } ;
typedef TYPE_1__ svn_wc__db_install_data_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_stream__install_delete (int ,int *) ;

svn_error_t *
svn_wc__db_pristine_install_abort(svn_wc__db_install_data_t *install_data,
                                  apr_pool_t *scratch_pool)
{
  return svn_error_trace(svn_stream__install_delete(install_data->inner_stream,
                                                    scratch_pool));
}
