
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
struct TYPE_8__ {int baton; } ;
typedef TYPE_2__ ra_svn_token_entry_t ;
struct TYPE_9__ {TYPE_1__* editor; } ;
typedef TYPE_3__ ra_svn_driver_state_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {int (* change_file_prop ) (int ,char const*,int *,int *) ;} ;


 int SVN_CMD_ERR (int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int lookup_token (TYPE_3__*,int *,int ,TYPE_2__**) ;
 int stub1 (int ,char const*,int *,int *) ;
 int svn_ra_svn__parse_tuple (int const*,char*,int **,char const**,int **) ;

__attribute__((used)) static svn_error_t *
ra_svn_handle_change_file_prop(svn_ra_svn_conn_t *conn,
                               apr_pool_t *pool,
                               const svn_ra_svn__list_t *params,
                               ra_svn_driver_state_t *ds)
{
  const char *name;
  svn_string_t *token, *value;
  ra_svn_token_entry_t *entry;

  SVN_ERR(svn_ra_svn__parse_tuple(params, "sc(?s)", &token, &name,
                                  &value));
  SVN_ERR(lookup_token(ds, token, TRUE, &entry));
  SVN_CMD_ERR(ds->editor->change_file_prop(entry->baton, name, value, pool));
  return SVN_NO_ERROR;
}
