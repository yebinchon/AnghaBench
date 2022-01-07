
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_wc__db_install_data_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
struct handler_baton {int * install_data; TYPE_2__* fb; int new_text_base_sha1_checksum; } ;
typedef int apr_pool_t ;
struct TYPE_6__ {int local_abspath; } ;
struct TYPE_5__ {TYPE_3__* dir_baton; TYPE_1__* edit_baton; } ;
struct TYPE_4__ {int db; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_wc__db_pristine_prepare_install (int **,int **,int *,int *,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
lazy_open_target(svn_stream_t **stream,
                 void *baton,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  struct handler_baton *hb = baton;
  svn_wc__db_install_data_t *install_data;






  SVN_ERR(svn_wc__db_pristine_prepare_install(stream,
                                              &install_data,
                                              &hb->new_text_base_sha1_checksum,
                                              ((void*)0),
                                              hb->fb->edit_baton->db,
                                              hb->fb->dir_baton->local_abspath,
                                              result_pool, scratch_pool));

  hb->install_data = install_data;

  return SVN_NO_ERROR;
}
