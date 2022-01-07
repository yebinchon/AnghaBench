
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_ra_svn_conn_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_procattr_t ;
struct TYPE_5__ {int in; int out; } ;
typedef TYPE_1__ apr_proc_t ;
typedef int apr_pool_t ;


 int APR_KILL_NEVER ;
 int APR_KILL_ONLY_ONCE ;
 int APR_PROGRAM_PATH ;
 scalar_t__ APR_SUCCESS ;
 int FALSE ;
 int SVN_DELTA_COMPRESSION_LEVEL_DEFAULT ;
 int SVN_ERR_RA_CANNOT_CREATE_TUNNEL ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int apr_file_inherit_unset (int ) ;
 TYPE_1__* apr_palloc (int *,int) ;
 int apr_pool_note_subprocess (int *,TYPE_1__*,int ) ;
 scalar_t__ apr_proc_create (TYPE_1__*,char const*,char const**,int *,int *,int *) ;
 scalar_t__ apr_procattr_child_errfn_set (int *,int ) ;
 scalar_t__ apr_procattr_cmdtype_set (int *,int ) ;
 scalar_t__ apr_procattr_create (int **,int *) ;
 scalar_t__ apr_procattr_io_set (int *,int,int,int ) ;
 int handle_child_process_error ;
 int * svn_error_create (int ,int ,int *) ;
 int * svn_error_quick_wrap (int *,int ) ;
 int svn_error_wrap_apr (scalar_t__,int ) ;
 int * svn_ra_svn__skip_leading_garbage (int *,int *) ;
 int * svn_ra_svn_create_conn5 (int *,int ,int ,int ,int ,int ,int ,int ,int *) ;
 int svn_stream_from_aprfile2 (int ,int ,int *) ;

__attribute__((used)) static svn_error_t *make_tunnel(const char **args, svn_ra_svn_conn_t **conn,
                                apr_pool_t *pool)
{
  apr_status_t status;
  apr_proc_t *proc;
  apr_procattr_t *attr;
  svn_error_t *err;

  status = apr_procattr_create(&attr, pool);
  if (status == APR_SUCCESS)
    status = apr_procattr_io_set(attr, 1, 1, 0);
  if (status == APR_SUCCESS)
    status = apr_procattr_cmdtype_set(attr, APR_PROGRAM_PATH);
  if (status == APR_SUCCESS)
    status = apr_procattr_child_errfn_set(attr, handle_child_process_error);
  proc = apr_palloc(pool, sizeof(*proc));
  if (status == APR_SUCCESS)
    status = apr_proc_create(proc, *args, args, ((void*)0), attr, pool);
  if (status != APR_SUCCESS)
    return svn_error_create(SVN_ERR_RA_CANNOT_CREATE_TUNNEL,
                            svn_error_wrap_apr(status,
                                               _("Can't create tunnel")), ((void*)0));
  apr_pool_note_subprocess(pool, proc, APR_KILL_ONLY_ONCE);





  apr_file_inherit_unset(proc->in);
  apr_file_inherit_unset(proc->out);


  *conn = svn_ra_svn_create_conn5(((void*)0),
                                  svn_stream_from_aprfile2(proc->out, FALSE,
                                                           pool),
                                  svn_stream_from_aprfile2(proc->in, FALSE,
                                                           pool),
                                  SVN_DELTA_COMPRESSION_LEVEL_DEFAULT,
                                  0, 0, 0, 0, pool);
  err = svn_ra_svn__skip_leading_garbage(*conn, pool);
  if (err)
    return svn_error_quick_wrap(
             err,
             _("To better debug SSH connection problems, remove the -q "
               "option from 'ssh' in the [tunnels] section of your "
               "Subversion configuration file."));

  return SVN_NO_ERROR;
}
