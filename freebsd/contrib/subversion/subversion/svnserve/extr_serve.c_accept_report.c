
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_delta_editor_t ;
typedef int svn_boolean_t ;
struct TYPE_12__ {TYPE_2__* repository; } ;
typedef TYPE_3__ server_baton_t ;
struct TYPE_13__ {int entry_counter; scalar_t__ only_empty_entries; int * err; int * from_rev; void* report_baton; int repos_url; TYPE_3__* sb; } ;
typedef TYPE_4__ report_driver_baton_t ;
struct TYPE_14__ {int * conn; TYPE_3__* server; } ;
typedef TYPE_5__ authz_baton_t ;
typedef int apr_pool_t ;
struct TYPE_11__ {int repos_url; TYPE_1__* fs_path; int repos; } ;
struct TYPE_10__ {int data; } ;


 int SVN_CMD_ERR (int *) ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int authz_check_access_cb_func (TYPE_3__*) ;
 int report_commands ;
 int svn_error_clear (int *) ;
 int svn_path_uri_decode (int ,int *) ;
 int * svn_ra_svn__handle_commands2 (int *,int *,int ,TYPE_4__*,scalar_t__) ;
 int svn_ra_svn__write_cmd_response (int *,int *,char*) ;
 int svn_ra_svn_get_editor (int const**,void**,int *,int *,int *,int *) ;
 int svn_ra_svn_zero_copy_limit (int *) ;
 int * svn_repos_begin_report3 (void**,int ,int ,int ,char const*,char const*,int,int ,int,int,int const*,void*,int ,TYPE_5__*,int ,int *) ;

__attribute__((used)) static svn_error_t *accept_report(svn_boolean_t *only_empty_entry,
                                  svn_revnum_t *from_rev,
                                  svn_ra_svn_conn_t *conn, apr_pool_t *pool,
                                  server_baton_t *b, svn_revnum_t rev,
                                  const char *target, const char *tgt_path,
                                  svn_boolean_t text_deltas,
                                  svn_depth_t depth,
                                  svn_boolean_t send_copyfrom_args,
                                  svn_boolean_t ignore_ancestry)
{
  const svn_delta_editor_t *editor;
  void *edit_baton, *report_baton;
  report_driver_baton_t rb;
  svn_error_t *err;
  authz_baton_t ab;

  ab.server = b;
  ab.conn = conn;



  svn_ra_svn_get_editor(&editor, &edit_baton, conn, pool, ((void*)0), ((void*)0));
  SVN_CMD_ERR(svn_repos_begin_report3(&report_baton, rev,
                                      b->repository->repos,
                                      b->repository->fs_path->data, target,
                                      tgt_path, text_deltas, depth,
                                      ignore_ancestry, send_copyfrom_args,
                                      editor, edit_baton,
                                      authz_check_access_cb_func(b),
                                      &ab, svn_ra_svn_zero_copy_limit(conn),
                                      pool));

  rb.sb = b;
  rb.repos_url = svn_path_uri_decode(b->repository->repos_url, pool);
  rb.report_baton = report_baton;
  rb.err = ((void*)0);
  rb.entry_counter = 0;
  rb.only_empty_entries = TRUE;
  rb.from_rev = from_rev;
  if (from_rev)
    *from_rev = SVN_INVALID_REVNUM;
  err = svn_ra_svn__handle_commands2(conn, pool, report_commands, &rb, TRUE);
  if (err)
    {

      svn_error_clear(rb.err);
      return err;
    }
  else if (rb.err)
    {

      SVN_CMD_ERR(rb.err);
    }
  SVN_ERR(svn_ra_svn__write_cmd_response(conn, pool, ""));

  if (only_empty_entry)
    *only_empty_entry = rb.entry_counter == 1 && rb.only_empty_entries;

  return SVN_NO_ERROR;
}
