
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
struct TYPE_9__ {int baton; } ;
typedef TYPE_2__ ra_svn_token_entry_t ;
struct TYPE_10__ {scalar_t__ file_refs; int file_pool; TYPE_1__* editor; } ;
typedef TYPE_3__ ra_svn_driver_state_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {int (* close_file ) (int ,char const*,int *) ;} ;


 int SVN_CMD_ERR (int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int lookup_token (TYPE_3__*,int *,int ,TYPE_2__**) ;
 int remove_token (TYPE_3__*,int *) ;
 int stub1 (int ,char const*,int *) ;
 int svn_pool_clear (int ) ;
 int svn_ra_svn__parse_tuple (int const*,char*,int **,char const**) ;

__attribute__((used)) static svn_error_t *
ra_svn_handle_close_file(svn_ra_svn_conn_t *conn,
                         apr_pool_t *pool,
                         const svn_ra_svn__list_t *params,
                         ra_svn_driver_state_t *ds)
{
  svn_string_t *token;
  ra_svn_token_entry_t *entry;
  const char *text_checksum;


  SVN_ERR(svn_ra_svn__parse_tuple(params, "s(?c)",
                                  &token, &text_checksum));
  SVN_ERR(lookup_token(ds, token, TRUE, &entry));


  SVN_CMD_ERR(ds->editor->close_file(entry->baton, text_checksum, pool));
  remove_token(ds, token);
  if (--ds->file_refs == 0)
    svn_pool_clear(ds->file_pool);
  return SVN_NO_ERROR;
}
