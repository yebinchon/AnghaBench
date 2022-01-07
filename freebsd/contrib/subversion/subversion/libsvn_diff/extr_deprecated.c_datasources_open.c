
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_diff_datasource_e ;
struct fns_wrapper_baton {int old_baton; TYPE_1__* vtable; } ;
typedef size_t apr_size_t ;
typedef scalar_t__ apr_off_t ;
struct TYPE_2__ {int (* datasource_open ) (int ,int const) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,int const) ;

__attribute__((used)) static svn_error_t *
datasources_open(void *baton,
                 apr_off_t *prefix_lines,
                 apr_off_t *suffix_lines,
                 const svn_diff_datasource_e *datasources,
                 apr_size_t datasource_len)
{
  struct fns_wrapper_baton *fwb = baton;
  apr_size_t i;


  for (i = 0; i < datasource_len; i++)
    {
      SVN_ERR(fwb->vtable->datasource_open(fwb->old_baton, datasources[i]));
    }


  *prefix_lines = 0;
  *suffix_lines = 0;

  return SVN_NO_ERROR;
}
