
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
struct TYPE_10__ {int baton; } ;
typedef TYPE_2__ ra_svn_token_entry_t ;
struct TYPE_11__ {int file_pool; TYPE_1__* editor; int file_refs; } ;
typedef TYPE_3__ ra_svn_driver_state_t ;
typedef int apr_pool_t ;
struct TYPE_9__ {int (* add_file ) (char const*,int ,char const*,int ,int ,int *) ;} ;


 int FALSE ;
 int SVN_CMD_ERR (int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int lookup_token (TYPE_3__*,int *,int ,TYPE_2__**) ;
 TYPE_2__* store_token (TYPE_3__*,int *,int *,int ,int ) ;
 int stub1 (char const*,int ,char const*,int ,int ,int *) ;
 char* svn_fspath__canonicalize (char const*,int *) ;
 scalar_t__ svn_path_is_url (char const*) ;
 int svn_ra_svn__parse_tuple (int const*,char*,char const**,int **,int **,char const**,int *) ;
 char* svn_relpath_canonicalize (char const*,int *) ;
 int svn_relpath_is_canonical (char const*) ;
 char* svn_uri_canonicalize (char const*,int *) ;

__attribute__((used)) static svn_error_t *
ra_svn_handle_add_file(svn_ra_svn_conn_t *conn,
                       apr_pool_t *pool,
                       const svn_ra_svn__list_t *params,
                       ra_svn_driver_state_t *ds)
{
  const char *path, *copy_path;
  svn_string_t *token, *file_token;
  svn_revnum_t copy_rev;
  ra_svn_token_entry_t *entry, *file_entry;

  SVN_ERR(svn_ra_svn__parse_tuple(params, "css(?cr)", &path, &token,
                                  &file_token, &copy_path, &copy_rev));
  SVN_ERR(lookup_token(ds, token, FALSE, &entry));
  ds->file_refs++;


  if (!svn_relpath_is_canonical(path))
    path = svn_relpath_canonicalize(path, pool);



  if (copy_path)
    {
      if (svn_path_is_url(copy_path))
        copy_path = svn_uri_canonicalize(copy_path, pool);
      else
        copy_path = svn_fspath__canonicalize(copy_path, pool);
    }

  file_entry = store_token(ds, ((void*)0), file_token, TRUE, ds->file_pool);
  SVN_CMD_ERR(ds->editor->add_file(path, entry->baton, copy_path, copy_rev,
                                   ds->file_pool, &file_entry->baton));
  return SVN_NO_ERROR;
}
