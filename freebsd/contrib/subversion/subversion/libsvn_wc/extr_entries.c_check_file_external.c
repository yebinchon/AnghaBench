
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {void* number; } ;
struct TYPE_13__ {TYPE_1__ value; void* kind; } ;
struct TYPE_14__ {char const* file_external_path; TYPE_2__ file_external_rev; TYPE_2__ file_external_peg_rev; } ;
typedef TYPE_3__ svn_wc_entry_t ;
typedef int svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef void* svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_15__ {scalar_t__ apr_err; } ;
typedef TYPE_4__ svn_error_t ;
typedef int apr_pool_t ;


 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 scalar_t__ SVN_IS_VALID_REVNUM (void*) ;
 TYPE_4__* SVN_NO_ERROR ;
 int svn_error_clear (TYPE_4__*) ;
 TYPE_4__* svn_error_trace (TYPE_4__*) ;
 scalar_t__ svn_node_file ;
 void* svn_opt_revision_number ;
 TYPE_4__* svn_wc__db_external_read (scalar_t__*,scalar_t__*,int *,int *,int *,char const**,void**,void**,int *,char const*,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_normal ;

__attribute__((used)) static svn_error_t *
check_file_external(svn_wc_entry_t *entry,
                    svn_wc__db_t *db,
                    const char *local_abspath,
                    const char *wri_abspath,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  svn_wc__db_status_t status;
  svn_node_kind_t kind;
  const char *repos_relpath;
  svn_revnum_t peg_revision;
  svn_revnum_t revision;
  svn_error_t *err;

  err = svn_wc__db_external_read(&status, &kind, ((void*)0), ((void*)0), ((void*)0),
                                 &repos_relpath, &peg_revision, &revision,
                                 db, local_abspath, wri_abspath,
                                 result_pool, scratch_pool);

  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
        return svn_error_trace(err);

      svn_error_clear(err);
      return SVN_NO_ERROR;
    }

  if (status == svn_wc__db_status_normal
      && kind == svn_node_file)
    {
      entry->file_external_path = repos_relpath;
      if (SVN_IS_VALID_REVNUM(peg_revision))
        {
          entry->file_external_peg_rev.kind = svn_opt_revision_number;
          entry->file_external_peg_rev.value.number = peg_revision;
          entry->file_external_rev = entry->file_external_peg_rev;
        }
      if (SVN_IS_VALID_REVNUM(revision))
        {
          entry->file_external_rev.kind = svn_opt_revision_number;
          entry->file_external_rev.value.number = revision;
        }
    }

  return SVN_NO_ERROR;
}
