
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int pool; int * dstream; } ;
typedef TYPE_1__ ra_svn_token_entry_t ;
typedef int ra_svn_driver_state_t ;
typedef int apr_pool_t ;


 int SVN_CMD_ERR (int ) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_RA_SVN_MALFORMED_DATA ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int lookup_token (int *,int *,int ,TYPE_1__**) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_pool_destroy (int ) ;
 int svn_ra_svn__parse_tuple (int const*,char*,int **) ;
 int svn_stream_close (int *) ;

__attribute__((used)) static svn_error_t *
ra_svn_handle_textdelta_end(svn_ra_svn_conn_t *conn,
                            apr_pool_t *pool,
                            const svn_ra_svn__list_t *params,
                            ra_svn_driver_state_t *ds)
{
  svn_string_t *token;
  ra_svn_token_entry_t *entry;


  SVN_ERR(svn_ra_svn__parse_tuple(params, "s", &token));
  SVN_ERR(lookup_token(ds, token, TRUE, &entry));
  if (!entry->dstream)
    return svn_error_create(SVN_ERR_RA_SVN_MALFORMED_DATA, ((void*)0),
                            _("Apply-textdelta not active"));
  SVN_CMD_ERR(svn_stream_close(entry->dstream));
  entry->dstream = ((void*)0);
  svn_pool_destroy(entry->pool);
  return SVN_NO_ERROR;
}
