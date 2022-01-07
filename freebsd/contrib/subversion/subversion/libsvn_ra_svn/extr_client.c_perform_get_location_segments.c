
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef void* svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
struct TYPE_14__ {int * conn; } ;
typedef TYPE_2__ svn_ra_svn__session_baton_t ;
struct TYPE_13__ {int list; } ;
struct TYPE_15__ {scalar_t__ kind; TYPE_1__ u; } ;
typedef TYPE_3__ svn_ra_svn__item_t ;
struct TYPE_16__ {TYPE_2__* priv; } ;
typedef TYPE_4__ svn_ra_session_t ;
struct TYPE_17__ {char const* path; void* range_end; void* range_start; } ;
typedef TYPE_5__ svn_location_segment_t ;
typedef int (* svn_location_segment_receiver_t ) (TYPE_5__*,void*,int *) ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int N_ (char*) ;
 int SVN_ERR (int *) ;
 int SVN_ERR_CEASE_INVOCATION ;
 int SVN_ERR_RA_SVN_MALFORMED_DATA ;
 scalar_t__ SVN_IS_VALID_REVNUM (void*) ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN_RA_SVN_LIST ;
 int _ (char*) ;
 TYPE_5__* apr_pcalloc (int *,int) ;
 int handle_auth_request (TYPE_2__*,int *) ;
 int * handle_unsupported_cmd (int ,int ) ;
 scalar_t__ is_done_response (TYPE_3__*) ;
 int * svn_error_create (int ,int *,int ) ;
 scalar_t__ svn_error_find_cause (int *,int ) ;
 int * svn_error_trace (int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_ra_svn__parse_tuple (int *,char*,void**,void**,char const**) ;
 int * svn_ra_svn__read_cmd_response (int *,int *,char*) ;
 int * svn_ra_svn__read_item (int *,int *,TYPE_3__**) ;
 int * svn_ra_svn__write_tuple (int *,int *,char*,char*,char const*,void*,void*,void*) ;
 char* svn_relpath_canonicalize (char const*,int *) ;

__attribute__((used)) static svn_error_t *
perform_get_location_segments(svn_error_t **outer_error,
                              svn_ra_session_t *session,
                              const char *path,
                              svn_revnum_t peg_revision,
                              svn_revnum_t start_rev,
                              svn_revnum_t end_rev,
                              svn_location_segment_receiver_t receiver,
                              void *receiver_baton,
                              apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess_baton = session->priv;
  svn_ra_svn_conn_t *conn = sess_baton->conn;
  svn_boolean_t is_done;
  apr_pool_t *iterpool = svn_pool_create(pool);


  SVN_ERR(svn_ra_svn__write_tuple(conn, pool, "w(c(?r)(?r)(?r))",
                                  "get-location-segments",
                                  path, peg_revision, start_rev, end_rev));


  SVN_ERR(handle_unsupported_cmd(handle_auth_request(sess_baton, pool),
                                 N_("'get-location-segments'"
                                    " not implemented")));


  is_done = FALSE;
  while (!is_done)
    {
      svn_revnum_t range_start, range_end;
      svn_ra_svn__item_t *item;
      const char *ret_path;

      svn_pool_clear(iterpool);
      SVN_ERR(svn_ra_svn__read_item(conn, iterpool, &item));
      if (is_done_response(item))
        is_done = 1;
      else if (item->kind != SVN_RA_SVN_LIST)
        return svn_error_create(SVN_ERR_RA_SVN_MALFORMED_DATA, ((void*)0),
                                _("Location segment entry not a list"));
      else
        {
          svn_location_segment_t *segment = apr_pcalloc(iterpool,
                                                        sizeof(*segment));
          SVN_ERR(svn_ra_svn__parse_tuple(&item->u.list, "rr(?c)",
                                          &range_start, &range_end, &ret_path));
          if (! (SVN_IS_VALID_REVNUM(range_start)
                 && SVN_IS_VALID_REVNUM(range_end)))
            return svn_error_create(SVN_ERR_RA_SVN_MALFORMED_DATA, ((void*)0),
                                    _("Expected valid revision range"));
          if (ret_path)
            ret_path = svn_relpath_canonicalize(ret_path, iterpool);
          segment->path = ret_path;
          segment->range_start = range_start;
          segment->range_end = range_end;

          if (!*outer_error)
            {
              svn_error_t *err = svn_error_trace(receiver(segment, receiver_baton,
                                                          iterpool));

              if (svn_error_find_cause(err, SVN_ERR_CEASE_INVOCATION))
                *outer_error = err;
              else
                SVN_ERR(err);
            }
        }
    }
  svn_pool_destroy(iterpool);



  SVN_ERR(svn_ra_svn__read_cmd_response(conn, pool, ""));

  return SVN_NO_ERROR;
}
