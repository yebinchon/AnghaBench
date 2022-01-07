
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int * conflicts; int wcroot_abspath; void* depth; void* schedule; int moved_to_abspath; int checksum; int * moved_from_abspath; void* copyfrom_rev; void* copyfrom_url; int changelist; int recorded_time; int recorded_size; } ;
typedef TYPE_2__ svn_wc_info_t ;
struct TYPE_16__ {char const* repos_root_URL; char const* repos_UUID; TYPE_1__* lock; TYPE_2__* wc_info; int size; void* URL; void* rev; int kind; int last_changed_author; int last_changed_date; int last_changed_rev; } ;
typedef TYPE_3__ svn_wc__info2_t ;
typedef int svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
struct TYPE_17__ {int date; int comment; int owner; int token; } ;
typedef TYPE_4__ svn_wc__db_lock_t ;
typedef void* svn_revnum_t ;
typedef int svn_node_kind_t ;
struct TYPE_18__ {scalar_t__ apr_err; } ;
typedef TYPE_5__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_14__ {int creation_date; int comment; int owner; int token; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 int SVN_INVALID_FILESIZE ;
 void* SVN_INVALID_REVNUM ;
 TYPE_5__* SVN_NO_ERROR ;
 void* apr_pcalloc (int *,int) ;
 void* svn_depth_exclude ;
 int svn_error_clear (TYPE_5__*) ;
 TYPE_5__* svn_error_trace (TYPE_5__*) ;
 int svn_node_unknown ;
 void* svn_path_url_add_component2 (char const*,char const*,int *) ;
 int svn_wc__db_get_wcroot (int *,int *,char const*,int *,int *) ;
 int svn_wc__db_info_below_working (scalar_t__*,scalar_t__*,scalar_t__*,int *,char const*,int *) ;
 int svn_wc__db_read_info (scalar_t__*,int *,void**,char const**,char const**,char const**,int *,int *,int *,void**,int *,int *,char const**,char const**,char const**,void**,TYPE_4__**,int *,int *,int *,scalar_t__*,scalar_t__*,int *,int *,scalar_t__*,scalar_t__*,int *,int *,char const*,int *,int *) ;
 int svn_wc__db_read_pristine_info (scalar_t__*,int *,int *,int *,int *,void**,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc__db_read_repos_info (void**,char const**,char const**,char const**,int *,char const*,int *,int *) ;
 int svn_wc__db_scan_deletion (int *,int *,int *,int *,int *,char const*,int *,int *) ;
 TYPE_5__* svn_wc__db_scan_moved (int **,int *,int *,int *,int *,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_deleted ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_not_present ;
 scalar_t__ svn_wc__db_status_server_excluded ;
 int svn_wc__read_conflicts (int **,int *,int *,char const*,int ,int ,int *,int *) ;
 void* svn_wc_schedule_add ;
 void* svn_wc_schedule_delete ;
 void* svn_wc_schedule_normal ;
 void* svn_wc_schedule_replace ;

__attribute__((used)) static svn_error_t *
build_info_for_node(svn_wc__info2_t **info,
                     svn_wc__db_t *db,
                     const char *local_abspath,
                     svn_node_kind_t kind,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  svn_wc__info2_t *tmpinfo;
  const char *repos_relpath;
  svn_wc__db_status_t status;
  svn_node_kind_t db_kind;
  const char *original_repos_relpath;
  const char *original_repos_root_url;
  const char *original_uuid;
  svn_revnum_t original_revision;
  svn_wc__db_lock_t *lock;
  svn_boolean_t conflicted;
  svn_boolean_t op_root;
  svn_boolean_t have_base;
  svn_boolean_t have_more_work;
  svn_wc_info_t *wc_info;

  tmpinfo = apr_pcalloc(result_pool, sizeof(*tmpinfo));
  tmpinfo->kind = kind;

  wc_info = apr_pcalloc(result_pool, sizeof(*wc_info));
  tmpinfo->wc_info = wc_info;

  wc_info->copyfrom_rev = SVN_INVALID_REVNUM;

  SVN_ERR(svn_wc__db_read_info(&status, &db_kind, &tmpinfo->rev,
                               &repos_relpath,
                               &tmpinfo->repos_root_URL, &tmpinfo->repos_UUID,
                               &tmpinfo->last_changed_rev,
                               &tmpinfo->last_changed_date,
                               &tmpinfo->last_changed_author,
                               &wc_info->depth, &wc_info->checksum, ((void*)0),
                               &original_repos_relpath,
                               &original_repos_root_url, &original_uuid,
                               &original_revision, &lock,
                               &wc_info->recorded_size,
                               &wc_info->recorded_time,
                               &wc_info->changelist,
                               &conflicted, &op_root, ((void*)0), ((void*)0),
                               &have_base, &have_more_work, ((void*)0),
                               db, local_abspath,
                               result_pool, scratch_pool));

  if (original_repos_root_url != ((void*)0))
    {
      tmpinfo->repos_root_URL = original_repos_root_url;
      tmpinfo->repos_UUID = original_uuid;
    }

  if (status == svn_wc__db_status_added)
    {





      if (original_repos_relpath)
        {

          tmpinfo->rev = original_revision;

          if (op_root)
            {
              svn_error_t *err;
              wc_info->copyfrom_url =
                    svn_path_url_add_component2(tmpinfo->repos_root_URL,
                                                original_repos_relpath,
                                                result_pool);

              wc_info->copyfrom_rev = original_revision;

              err = svn_wc__db_scan_moved(&wc_info->moved_from_abspath,
                                          ((void*)0), ((void*)0), ((void*)0),
                                          db, local_abspath,
                                          result_pool, scratch_pool);

              if (err)
                {
                   if (err->apr_err != SVN_ERR_WC_PATH_UNEXPECTED_STATUS)
                      return svn_error_trace(err);
                   svn_error_clear(err);
                   wc_info->moved_from_abspath = ((void*)0);
                }
            }
        }



      if (! op_root)
        wc_info->schedule = svn_wc_schedule_normal;
      else if (! have_more_work && ! have_base)
        wc_info->schedule = svn_wc_schedule_add;
      else
        {
          svn_wc__db_status_t below_working;
          svn_boolean_t have_work;

          SVN_ERR(svn_wc__db_info_below_working(&have_base, &have_work,
                                                &below_working,
                                                db, local_abspath,
                                                scratch_pool));



          if (below_working != svn_wc__db_status_not_present
              && below_working != svn_wc__db_status_deleted)
            {
              wc_info->schedule = svn_wc_schedule_replace;
            }
          else
            wc_info->schedule = svn_wc_schedule_add;
        }
      SVN_ERR(svn_wc__db_read_repos_info(((void*)0), &repos_relpath,
                                         &tmpinfo->repos_root_URL,
                                         &tmpinfo->repos_UUID,
                                         db, local_abspath,
                                         result_pool, scratch_pool));

      tmpinfo->URL = svn_path_url_add_component2(tmpinfo->repos_root_URL,
                                                 repos_relpath, result_pool);
    }
  else if (status == svn_wc__db_status_deleted)
    {
      svn_wc__db_status_t w_status;

      SVN_ERR(svn_wc__db_read_pristine_info(&w_status, &tmpinfo->kind,
                                            &tmpinfo->last_changed_rev,
                                            &tmpinfo->last_changed_date,
                                            &tmpinfo->last_changed_author,
                                            &wc_info->depth,
                                            &wc_info->checksum,
                                            ((void*)0), ((void*)0), ((void*)0),
                                            db, local_abspath,
                                            result_pool, scratch_pool));

      if (w_status == svn_wc__db_status_deleted)
        {





          wc_info->depth = svn_depth_exclude;
          tmpinfo->kind = svn_node_unknown;
        }


      SVN_ERR(svn_wc__db_scan_deletion(((void*)0), &wc_info->moved_to_abspath,
                                       ((void*)0), ((void*)0),
                                       db, local_abspath,
                                       scratch_pool, scratch_pool));

      SVN_ERR(svn_wc__db_read_repos_info(&tmpinfo->rev, &repos_relpath,
                                         &tmpinfo->repos_root_URL,
                                         &tmpinfo->repos_UUID,
                                         db, local_abspath,
                                         result_pool, scratch_pool));

      wc_info->schedule = svn_wc_schedule_delete;
      tmpinfo->URL = svn_path_url_add_component2(tmpinfo->repos_root_URL,
                                                 repos_relpath, result_pool);
    }
  else if (status == svn_wc__db_status_not_present
           || status == svn_wc__db_status_server_excluded)
    {
      *info = ((void*)0);
      return SVN_NO_ERROR;
    }
  else if (status == svn_wc__db_status_excluded && !repos_relpath)
    {


      SVN_ERR(svn_wc__db_read_repos_info(((void*)0), &repos_relpath,
                                         &tmpinfo->repos_root_URL,
                                         &tmpinfo->repos_UUID,
                                         db, local_abspath,
                                         result_pool, scratch_pool));

      wc_info->schedule = svn_wc_schedule_normal;
      tmpinfo->URL = svn_path_url_add_component2(tmpinfo->repos_root_URL,
                                                 repos_relpath, result_pool);
      tmpinfo->wc_info->depth = svn_depth_exclude;
    }
  else
    {

      tmpinfo->URL = svn_path_url_add_component2(tmpinfo->repos_root_URL,
                                                 repos_relpath,
                                                 result_pool);
      wc_info->schedule = svn_wc_schedule_normal;

      if (status == svn_wc__db_status_excluded)
        wc_info->depth = svn_depth_exclude;
    }


  tmpinfo->size = SVN_INVALID_FILESIZE;

  SVN_ERR(svn_wc__db_get_wcroot(&tmpinfo->wc_info->wcroot_abspath, db,
                                local_abspath, result_pool, scratch_pool));

  if (conflicted)
    SVN_ERR(svn_wc__read_conflicts(&wc_info->conflicts, ((void*)0),
                                   db, local_abspath,
                                   FALSE ,
                                   FALSE ,
                                   result_pool, scratch_pool));
  else
    wc_info->conflicts = ((void*)0);


  if (lock != ((void*)0))
    {
      tmpinfo->lock = apr_pcalloc(result_pool, sizeof(*(tmpinfo->lock)));
      tmpinfo->lock->token = lock->token;
      tmpinfo->lock->owner = lock->owner;
      tmpinfo->lock->comment = lock->comment;
      tmpinfo->lock->creation_date = lock->date;
    }

  *info = tmpinfo;
  return SVN_NO_ERROR;
}
