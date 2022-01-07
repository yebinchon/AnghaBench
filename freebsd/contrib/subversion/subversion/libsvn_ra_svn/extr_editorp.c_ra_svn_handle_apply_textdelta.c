
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_txdelta_window_handler_t ;
typedef int svn_string_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
struct TYPE_8__ {int pool; scalar_t__ dstream; int baton; } ;
typedef TYPE_2__ ra_svn_token_entry_t ;
struct TYPE_9__ {TYPE_1__* editor; int file_pool; } ;
typedef TYPE_3__ ra_svn_driver_state_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {int (* apply_textdelta ) (int ,char*,int ,int *,void**) ;} ;


 int SVN_CMD_ERR (int ) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_RA_SVN_MALFORMED_DATA ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int lookup_token (TYPE_3__*,int *,int ,TYPE_2__**) ;
 int stub1 (int ,char*,int ,int *,void**) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_pool_create (int ) ;
 int svn_ra_svn__parse_tuple (int const*,char*,int **,char**) ;
 scalar_t__ svn_txdelta_parse_svndiff (int ,void*,int ,int ) ;

__attribute__((used)) static svn_error_t *
ra_svn_handle_apply_textdelta(svn_ra_svn_conn_t *conn,
                              apr_pool_t *pool,
                              const svn_ra_svn__list_t *params,
                              ra_svn_driver_state_t *ds)
{
  svn_string_t *token;
  ra_svn_token_entry_t *entry;
  svn_txdelta_window_handler_t wh;
  void *wh_baton;
  char *base_checksum;


  SVN_ERR(svn_ra_svn__parse_tuple(params, "s(?c)",
                                  &token, &base_checksum));
  SVN_ERR(lookup_token(ds, token, TRUE, &entry));
  if (entry->dstream)
    return svn_error_create(SVN_ERR_RA_SVN_MALFORMED_DATA, ((void*)0),
                            _("Apply-textdelta already active"));
  entry->pool = svn_pool_create(ds->file_pool);
  SVN_CMD_ERR(ds->editor->apply_textdelta(entry->baton, base_checksum,
                                          entry->pool, &wh, &wh_baton));
  entry->dstream = svn_txdelta_parse_svndiff(wh, wh_baton, TRUE, entry->pool);
  return SVN_NO_ERROR;
}
